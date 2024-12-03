package controller;

import Model.DAO.ChatBoxDAO;
import Model.Entity.ChatMessage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

// Đảm bảo mapping với web.xml
@WebServlet("/ChatBoxController")
public class ChatBoxController extends HttpServlet {
    private ChatBoxDAO chatBoxDAO;

    @Override
    public void init() {
        chatBoxDAO = new ChatBoxDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //phương thức doGet được gọi từ ChatBox.jsp
        String action = request.getParameter("action");
        try {
            if ("loadChatHistory".equals(action)) {
                loadChatHistory(request, response); //gọi đến phương thức lấy lịch sử chat
            } else {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                response.getWriter().write("Invalid action.");
            }
        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //phương thức được gọi từ ChatBox.jsp
        String action = request.getParameter("action");
        try {
            if ("sendMessage".equals(action)) {
                sendMessage(request, response); //gọi sendMessage
            } else {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                response.getWriter().write("Invalid action.");
            }
        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private void sendMessage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //phương thức gửi tin nhắn, được gọi từ doPost
        String sender = request.getParameter("sender");
        String receiver = request.getParameter("receiver");
        String messageText = request.getParameter("message");

        if (sender == null || receiver == null || messageText == null || sender.isEmpty() || receiver.isEmpty() || messageText.isEmpty()) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("Invalid input");
            return;
        }

        ChatMessage message = new ChatMessage();
        message.setSender(sender);
        message.setReceiver(receiver);
        message.setMessage(messageText);
        message.setTimestamp(java.time.LocalDateTime.now().toString()); //lưu các giá trị từ file Json thành các kiểu dữ liệu 

        chatBoxDAO.saveMessage(message); //gọi phương thức lưu tin nhắn ở DAO
        response.setStatus(HttpServletResponse.SC_OK);
        response.getWriter().write("Message sent successfully"); //xác nhận cập nhật
    }

    private void loadChatHistory(HttpServletRequest request, HttpServletResponse response) throws Exception { 
        //phương thức lấy lịch sử chat, được gọi từ doGet
        String sender = request.getParameter("sender");
        String receiver = request.getParameter("receiver");

        if (sender == null || receiver == null || sender.isEmpty() || receiver.isEmpty()) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("Invalid input");
            return;
        }
        //truy xuất lịch sử chat
        List<ChatMessage> chatHistory = chatBoxDAO.getChatHistory(sender, receiver);
        response.setContentType("application/json");
        PrintWriter out = response.getWriter(); //đưa các tin nhắn vào file json rồi đi tới renderChat
        out.write(new com.google.gson.Gson().toJson(chatHistory));
    }
}
