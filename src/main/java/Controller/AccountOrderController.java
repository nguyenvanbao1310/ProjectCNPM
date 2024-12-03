/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO.DonHangDAO;
import Model.DTO.OrderDTO;
import Model.Entity.DonHang;
import Model.Entity.KhachHang;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * @author daoducdanh
 */
@WebServlet(name = "AccountOrderController", urlPatterns = {"/account-order"})
public class AccountOrderController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");

        String pageParam = request.getParameter("page");
        int currentPage = pageParam != null ? Integer.parseInt(pageParam) : 1;
        int limit = 2;

        List<DonHang> donHangs = DonHangDAO.getOrderByKH(khachHang, currentPage, limit);
        DonHangDAO.updateTotalPriceForAllOrders(donHangs);
        long totalOrders = DonHangDAO.getTotalOrdersByKH(khachHang);
        int totalPages = (int) Math.ceil((double) totalOrders / limit);
        
        List<OrderDTO> orderDTOs = new ArrayList<>();
        for(DonHang donHang : donHangs){
            String chiTietListJson = donHang.getChiTietDonHangs().stream()
            .map(ct -> "{img: '" + ct.getDienThoai().getHinhAnh() +
                       "', name: '" + ct.getDienThoai().getTen() +
                        "', qty: '" + ct.getSoLuong() +
                       "', price: " + ct.getDienThoai().getGia() + "}")
            .collect(Collectors.joining(", ", "[", "]"));
            orderDTOs.add(new OrderDTO(donHang, chiTietListJson));
        }

        request.setAttribute("orderDTOs", orderDTOs);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);
        
        request.getRequestDispatcher("/View/customer/account-orders.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
