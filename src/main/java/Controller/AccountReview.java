/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO.DanhGiaDAO;
import Model.DAO.DienThoaiDAO;
import Model.DAO.DonHangDAO;
import Model.DTO.ProductWithReview;
import Model.Entity.KhachHang;
import Model.Entity.TaiKhoan;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import Model.Entity.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 *
 * @author daoducdanh
 */
@WebServlet(name = "AccountReview", urlPatterns = {"/account-review"})
public class AccountReview extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        TaiKhoan taiKhoan = (TaiKhoan)session.getAttribute("taiKhoan");
        KhachHang khachHang = (KhachHang)session.getAttribute("khachHang");
        
        request.setAttribute("taiKhoan", taiKhoan);
        request.setAttribute("khachHang", khachHang);
        
        Map<String, DienThoai> map = new LinkedHashMap<>();
        
        List<DonHang> donHangs = DonHangDAO.getOrderByKH(khachHang);
        for(DonHang donHang : donHangs){
            List<DonHangChiTiet> chiTiets = donHang.getChiTietDonHangs();
            
            for(DonHangChiTiet donHangChiTiet : chiTiets){
                DienThoai dienThoai = donHangChiTiet.getDienThoai();
                if(!map.containsKey(dienThoai.getId())){
                    map.put(dienThoai.getId(), dienThoai);
                }
            }
        }
        
        List<ProductWithReview> list = new ArrayList<>();
        map.forEach((key, value) -> {
            DanhGia danhGia = DanhGiaDAO.getDanhGiaByDTAndKH(value, khachHang);
            list.add(new ProductWithReview(value, danhGia));
        });
        
        
        request.setAttribute("productList", list);
        
        request.getRequestDispatcher("/View/customer/account-review.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        KhachHang khachHang = (KhachHang)session.getAttribute("khachHang");
        
        String productId = request.getParameter("productId");
        int rate = Integer.parseInt(request.getParameter("rating"));
        String content = request.getParameter("content");
        
        DienThoai dienThoai = DienThoaiDAO.findById(productId).get();
        DanhGia danhGia = new DanhGia(null, dienThoai, khachHang, rate, content, LocalDate.now());
        DanhGiaDAO.insert(danhGia);
        
//        response.sendRedirect("/account-review");
        response.sendRedirect(request.getContextPath() + "/account-review");
    }
}
