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
import Model.Entity.TaiKhoan;
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
@WebServlet(name = "CartController", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "/View/customer/GioHang.jsp";
        
        HttpSession session = request.getSession();
        TaiKhoan taiKhoan = (TaiKhoan) session.getAttribute("taiKhoan");
        GioHang gh = null;
        
        if(taiKhoan != null)
        {
            String khachHangID = KhachHangDAO.getIDCustomer(taiKhoan);
            gh = GioHangDAO.getGioHangByKhachHang(khachHangID);
        }
        else
        {
            gh = (GioHang) session.getAttribute("gioHangTamThoi");
            if (gh == null) {
                gh = new GioHang();
                session.setAttribute("gioHangTamThoi", gh);
            }
        }
        
        if(action.equals("update")){
           
            String proId = request.getParameter("productId");
            try
            {
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                if(quantity<0)
                {
                    session.setAttribute("errorMessage", "Số lượng phải là một số dương lớn hơn 0.");
                }
                else
                {
                    if(taiKhoan !=null)
                    {

                        String gioHangID = request.getParameter("idGioHang");
                        GioHangDAO.updateItem(gioHangID, proId, quantity);
                        gh = GioHangDAO.getGioHangByKhachHang(KhachHangDAO.getIDCustomer(taiKhoan));
                    }
                    else
                    {
                        GioHangDAO.updateItemSS(gh, proId, quantity);
                    }
                    session.setAttribute("message", "Giỏ hàng đã được cập nhật thành công!");
                }

            }catch (NumberFormatException e) {
                session.setAttribute("errorMessage", "Vui lòng nhập một số hợp lệ cho số lượng.");
            }
            
            
            
            request.setAttribute("gh", gh);
            url = "/View/customer/GioHang.jsp";
        }
        
        if(action.equals("remove"))
        {
            String proId = request.getParameter("productId");
            if(taiKhoan != null)
            {
                String idGioHang = request.getParameter("idGioHang");
                GioHangDAO.deleteItem(idGioHang, proId);
                gh = GioHangDAO.getGioHangByKhachHang(KhachHangDAO.getIDCustomer(taiKhoan));
            }
            request.setAttribute("gh", gh);
            url = "/View/customer/GioHang.jsp";
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "/View/customer/HomePage.jsp";

        if (action.equals("viewCart")) 
        {
            HttpSession session = request.getSession();
            TaiKhoan taiKhoan = (TaiKhoan) session.getAttribute("taiKhoan");
            GioHang gh = null;
            if(taiKhoan != null)
            {
                String khachHangID = request.getParameter("khachHangID");
                gh = GioHangDAO.getGioHangByKhachHang(khachHangID);
            }
            else
            {
                gh = (GioHang) session.getAttribute("gioHangTamThoi");
                if (gh == null) {
                    gh = new GioHang();
                    session.setAttribute("gioHangTamThoi", gh);
                }
            }
            
            request.setAttribute("gh", gh);
            url = "/View/customer/GioHang.jsp";
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}
