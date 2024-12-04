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
@WebServlet(name = "UpdateContact", urlPatterns = {"/update-contact"})
public class UpdateContact extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        KhachHang khachHang = (KhachHang)session.getAttribute("khachHang");
        
        
        String email = request.getParameter("email");
        
        khachHang.setEmail(email);
        KhachHangDAO.update(khachHang);
        
        response.sendRedirect("/account-info");
        
    }

}
