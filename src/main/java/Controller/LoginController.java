
package Controller;

import Model.DAO.GioHangDAO;
import Model.DAO.KhachHangDAO;
import Model.DAO.TaiKhoanDAO;
import Model.Entity.EQuyen;
import Model.Entity.GioHang;
import Model.Entity.Item;
import Model.Entity.ItemId;
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
import java.text.ParseException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/View/customer/Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        
        TaiKhoan taiKhoan = TaiKhoanDAO.login(phone, password);
        
        if(taiKhoan == null){
            request.setAttribute("error", "Tài khoản hoặc mật khẩu sai");
            request.getRequestDispatcher("/View/customer/Login.jsp").forward(request, response);
        }
        else
        {
            
            HttpSession session = request.getSession();
            session.setAttribute("taiKhoan", taiKhoan);
            String idKH = KhachHangDAO.getIDCustomer(taiKhoan);
            session.setAttribute("idKH", idKH);
            GioHang them = (GioHang)session.getAttribute("gioHangTamThoi");
           
            
            
            String selectedItemsParam = (String) session.getAttribute("selectedItems");
            if (selectedItemsParam != null)
            {
                String idGioHang = GioHangDAO.getGioHangByKhachHang(KhachHangDAO.getIDCustomer(taiKhoan)).getIdGioHang();
                
                for (Item item : them.getItems()) 
                {
                    GioHangDAO.addItem(idGioHang, item.getDienThoai().getId());
                }
                
                session.removeAttribute("selectedItems");
                String updatedSelectedItems = updateSelectedItemsWithGioHang(selectedItemsParam, idGioHang);
                response.sendRedirect(request.getContextPath() + "/checkout?selectedItems=" + updatedSelectedItems);
            }
            else
            {
                response.sendRedirect("/Project-Finals");
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
    private String updateSelectedItemsWithGioHang(String selectedItemsParam, String idGioHang) {
        StringBuilder updatedItems = new StringBuilder();
        String[] itemPairs = selectedItemsParam.split(",");
        for (String pair : itemPairs) {
            String[] ids = pair.split(":");
            if (ids.length == 2) {
                if (updatedItems.length() > 0) {
                    updatedItems.append(",");
                }
                updatedItems.append(idGioHang).append(":").append(ids[1]); // Thêm idGioHang vào
            }
        }
        return updatedItems.toString();
    }

}
