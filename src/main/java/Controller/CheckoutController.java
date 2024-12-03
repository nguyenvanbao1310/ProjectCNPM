/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO.ItemDAO;
import Model.Entity.Item;
import Model.Entity.TaiKhoan;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "CheckoutController", urlPatterns = {"/checkout"})
public class CheckoutController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {

        HttpSession session = request.getSession();
        List<Item> items = (List<Item>) session.getAttribute("items");
        request.setAttribute("items", items);
        String url = "/View/customer/Checkout-Payment- shipping method.jsp";
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    { 
        String selectedItemsParam = request.getParameter("selectedItems");
        String url = "View/customer/Checkout-Payment.jsp";
        
        HttpSession session = request.getSession();
        TaiKhoan taiKhoan = (TaiKhoan) session.getAttribute("taiKhoan");
        
        if(taiKhoan == null)
        {
            url = "View/customer/Login.jsp";
            session.setAttribute("thanhToanSauDangNhap", "checkout");
            session.setAttribute("selectedItems", selectedItemsParam);
        }
        else
        {
            if (selectedItemsParam != null && !selectedItemsParam.isEmpty()) 
            {
                String[] itemPairs = selectedItemsParam.split(",");
                List<Map.Entry<String, String>> itemStr = new ArrayList<>();
                for (String pair : itemPairs) {
                    String[] ids = pair.split(":");
                    if (ids.length == 2) {
                        itemStr.add(new AbstractMap.SimpleEntry<>(ids[0], ids[1])); 
                    }
                }
                List<Item> items = ItemDAO.findItemsByIds(itemStr);
                request.setAttribute("items", items);
                session.setAttribute("items", items);
            }
            else
            {
                url = "View/customer/Login.jsp";
            }
        }
        

        request.getRequestDispatcher(url).forward(request, response);
    }
}
