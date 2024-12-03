package Model.DAO;

import Model.Entity.ChatMessage;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ChatBoxDAO {
    public void saveMessage(ChatMessage message) throws Exception {
        String query = "INSERT INTO TinNhan (IdNguoiGui, IdNguoiNhan, ThoiGian, NoiDung) VALUES (?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, message.getSender());
            stmt.setString(2, message.getReceiver());
            stmt.setString(3, message.getTimestamp());
            stmt.setString(4, message.getMessage());
            stmt.executeUpdate(); //lưu tin nhắn
        } catch (SQLException e) {
            throw new Exception("Error saving message: " + e.getMessage(), e); 
        }
    }

    public List<ChatMessage> getChatHistory(String sender, String receiver) throws Exception {
        //phương thức truy xuất lịch sử được gọi từ Controller
        List<ChatMessage> messages = new ArrayList<>();
        String query = "SELECT IdNguoiGui, IdNguoiNhan, ThoiGian, NoiDung FROM TinNhan " +
                       "WHERE (IdNguoiGui = ? AND IdNguoiNhan = ?) OR (IdNguoiGui = ? AND IdNguoiNhan = ?) " +
                       "ORDER BY ThoiGian ASC";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, sender);
            stmt.setString(2, receiver);
            stmt.setString(3, receiver);
            stmt.setString(4, sender);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    ChatMessage message = new ChatMessage();
                    message.setSender(rs.getString("IdNguoiGui"));
                    message.setReceiver(rs.getString("IdNguoiNhan"));
                    message.setTimestamp(rs.getString("ThoiGian"));
                    message.setMessage(rs.getString("NoiDung"));
                    messages.add(message);
                }
            }
        } catch (SQLException e) {
            throw new Exception("Error fetching chat history: " + e.getMessage(), e);
        }

        return messages; //danh sách các tin nhắn sẽ được trả về
    }
}
