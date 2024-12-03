
package Controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class HomePageController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
      
//        List<DienThoai> dt = DienThoaiDAO.selectProductsTop8();
//        String message="Available";
//        if(dt==null)
//        {
//             message = "No found";
//        }
//       
//        request.setAttribute("dt", dt);
//        request.setAttribute("message", message);
//        String url = "/View/customer/HomePage.jsp";
//        
//       
//    getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}
