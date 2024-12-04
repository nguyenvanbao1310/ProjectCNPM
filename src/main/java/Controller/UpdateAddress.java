/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO.KhachHangDAO;
import Model.Entity.KhachHang;
import java.io.IOException;
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
@WebServlet(name = "UpdateAddress", urlPatterns = {"/update-address"})
public class UpdateAddress extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        KhachHang khachHang = (KhachHang)session.getAttribute("khachHang");
        
        
        String address = request.getParameter("address");
        
        khachHang.setDiaChi(address);
        KhachHangDAO.update(khachHang);
        
        response.sendRedirect("/account-info");
        
    }
}
