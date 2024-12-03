/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO.DienThoaiDAO;
import Model.DAO.GioHangDAO;
import Model.DAO.KhachHangDAO;
import Model.Entity.DienThoai;
import Model.Entity.GioHang;
import Model.Entity.KhachHang;
import Model.Entity.TaiKhoan;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class HomePageController extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String url = "/View/customer/HomePage.jsp";
        String action = request.getParameter("action");
        List<DienThoai> dt = DienThoaiDAO.selectProductsTop8();
        HttpSession session = request.getSession();
        TaiKhoan taiKhoan = (TaiKhoan) session.getAttribute("taiKhoan");
        request.setAttribute("dt", dt);
        GioHang gh;
        
        if (taiKhoan != null) {
            // Người dùng đã đăng nhập
            gh = GioHangDAO.getGioHangByKhachHang(KhachHangDAO.getIDCustomer(taiKhoan));
        } 
        else 
        {
            gh = (GioHang) session.getAttribute("gioHangTamThoi");
            if (gh == null) {
                gh = new GioHang(); // Tạo giỏ hàng tạm thời mới nếu chưa có
                session.setAttribute("gioHangTamThoi", gh);
            }
        }
        
        switch (action)
        {
            case "addItem":
                String proId = request.getParameter("productId");
                if(taiKhoan != null)
                {
                    String gioHangID = request.getParameter("idGioHang");
                    GioHangDAO.addItem(gioHangID, proId);
                    gh = GioHangDAO.getGioHangByKhachHang(KhachHangDAO.getIDCustomer(taiKhoan));
                    request.setAttribute("gh", gh);
                }
                else
                {
                    
                    gh = (GioHang) session.getAttribute("gioHangTamThoi");
                    if (gh == null) {
                        gh = new GioHang();
                        session.setAttribute("gioHangTamThoi", gh);
                    }
                    GioHangDAO.addItemSS(gh, proId);
                }
                break;
            case "removeItem":
                proId = request.getParameter("productId");
                if(taiKhoan != null)
                {
                    String idGioHang = request.getParameter("idGioHang");
                    GioHangDAO.deleteItem(idGioHang, proId);
                    gh = GioHangDAO.getGioHangByKhachHang(KhachHangDAO.getIDCustomer(taiKhoan));
                }
                else
                {
                    gh = (GioHang) session.getAttribute("gioHangTamThoi");
                    GioHangDAO.removeItemSS(gh, proId);
                }
            default:
                break;

        }
        request.setAttribute("gh", gh);
        getServletContext().getRequestDispatcher(url).forward(request, response);

    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String url = "/View/customer/HomePage.jsp";
        List<DienThoai> dt = DienThoaiDAO.selectProductsTop8();
        HttpSession session = request.getSession();
        TaiKhoan taiKhoan = (TaiKhoan) session.getAttribute("taiKhoan");
        
        KhachHang khachHang = KhachHangDAO.findByTaiKhoan(taiKhoan);
        session.setAttribute("khachHang", khachHang);
        
        GioHang gh;
        if(taiKhoan != null)
        {
            gh = GioHangDAO.getGioHangByKhachHang(KhachHangDAO.getIDCustomer(taiKhoan));
            
        }
        else
        {
            gh = (GioHang) session.getAttribute("gioHangTamThoi");
            if(gh == null)
            {
                gh = new GioHang();
                session.setAttribute("gioHangTamThoi", gh);
            }
        }
        request.setAttribute("gh", gh);
        request.setAttribute("dt", dt);
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}
