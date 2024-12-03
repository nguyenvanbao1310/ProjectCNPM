/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author daoducdanh
 */
@WebServlet(name = "UpdatePassword", urlPatterns = {"/update-password"})
public class UpdatePassword extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        TaiKhoan taiKhoan = (TaiKhoan) session.getAttribute("taiKhoan");
        
        String password = request.getParameter("password");
        String newPassword= request.getParameter("newPassword");
        
        if(!taiKhoan.getMatKhau().equals(password)){
            request.setAttribute("error", "Mật khẩu sai");
            request.getRequestDispatcher("/View/customer/account-info.jsp").forward(request, response);
        }
        else{
            taiKhoan.setMatKhau(newPassword);
            TaiKhoanDAO.update(taiKhoan);
//          response.sendRedirect("/account-info");
            response.sendRedirect(request.getContextPath() + "/account-info");
        }
        
    }

}
