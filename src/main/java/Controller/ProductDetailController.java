/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO.DienThoaiDAO;
import Model.Entity.DienThoai;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "ProductDetailController", urlPatterns = {"/detail"})
public class ProductDetailController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {

            String id = request.getParameter("id");
            DienThoai dt = DienThoaiDAO.getProduct(id);
            request.setAttribute("dt", dt);
            String url="/View/customer/ProductDetail.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    { 
         doPost(request,response);
    }
}
