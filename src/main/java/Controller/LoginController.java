
package Controller;

import Model.DAO.KhachHangDAO;
import Model.DAO.TaiKhoanDAO;
import Model.Entity.KhachHang;
import Model.Entity.TaiKhoan;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/View/customer/Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        
        TaiKhoan taiKhoan = TaiKhoanDAO.login(phone, password);
        
        if(taiKhoan == null){
            request.setAttribute("error", "Tài khoản hoặc mật khẩu sai");
            request.getRequestDispatcher("/View/customer/Login.jsp").forward(request, response);
        }
        else{
            HttpSession session = request.getSession();
            session.setAttribute("taiKhoan", taiKhoan);
            KhachHang khachHang = KhachHangDAO.findByTaiKhoan(taiKhoan);
            session.setAttribute("khachHang", khachHang);
            response.sendRedirect("/account-info");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
