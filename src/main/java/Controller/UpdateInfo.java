/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO.KhachHangDAO;
import Model.Entity.KhachHang;
import Model.Entity.TaiKhoan;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author daoducdanh
 */
@WebServlet(name = "UpdateInfo", urlPatterns = {"/update-info"})
public class UpdateInfo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            
            String name = request.getParameter("fullName");
            Date dob = sdf.parse(request.getParameter("dob"));
            
            HttpSession session = request.getSession();
            KhachHang khachHang = (KhachHang)session.getAttribute("khachHang");
            
            khachHang.setTen(name);
            khachHang.setNgaySinh(dob);
            KhachHangDAO.update(khachHang);
            
            response.sendRedirect("/account-info");
            
            
        } catch (ParseException ex) {
            Logger.getLogger(UpdateInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
