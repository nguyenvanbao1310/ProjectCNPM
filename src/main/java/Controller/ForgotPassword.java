
package Controller;

import Model.DAO.KhachHangDAO;
import Model.DAO.TaiKhoanDAO;
import Model.Entity.KhachHang;
import Model.Entity.TaiKhoan;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.EmailSender;

@WebServlet(name = "ForgotPassword", urlPatterns = {"/forgot-password"})
public class ForgotPassword extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/View/customer/ForgotPassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        
        KhachHang khachHang = KhachHangDAO.findByEmail(email);
        if(khachHang == null){
            request.setAttribute("error", "Không tìm thấy email");
            request.getRequestDispatcher("/View/customer/ForgotPassword.jsp").forward(request, response);
        }
        else{
            String password = khachHang.getTaiKhoan().getMatKhau();
            EmailSender.sendEmail(email, "Lấy lại mật khẩu", "Mật khẩu của bạn là: " + password);
            request.setAttribute("success", "Mật khẩu đã gửi đến email của bạn");
            request.getRequestDispatcher("/View/customer/ForgotPassword.jsp").forward(request, response);
        }
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
