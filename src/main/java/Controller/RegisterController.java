
package Controller;

import Model.DAO.KhachHangDAO;
import Model.DAO.TaiKhoanDAO;
import Model.Entity.EQuyen;
import Model.Entity.KhachHang;
import Model.Entity.TaiKhoan;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;


@WebServlet(name = "RegisterController", urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/View/customer/RegisterPage.jsp").forward(request, response);
    }

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    try {
        String name = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        Date dob = sdf.parse(request.getParameter("dob"));
        String password = request.getParameter("password");
        String retypePassword = request.getParameter("retypePassword");

        // Kiểm tra tính hợp lệ của email và số điện thoại
        String emailPattern = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        String phonePattern = "^0[0-9]{9}$";

        if (!email.matches(emailPattern)) {
            request.setAttribute("error", "Email không hợp lệ");
            request.getRequestDispatcher("/View/customer/RegisterPage.jsp").forward(request, response);
            return;
        }

        if (!phone.matches(phonePattern)) {
            request.setAttribute("error", "Số điện thoại không hợp lệ");
            request.getRequestDispatcher("/View/customer/RegisterPage.jsp").forward(request, response);
            return;
        }

        if (!password.equals(retypePassword)) {
            request.setAttribute("error", "Mật khẩu không giống nhau");
            request.getRequestDispatcher("/View/customer/RegisterPage.jsp").forward(request, response);
        } else if (TaiKhoanDAO.findByPhone(phone) != null) {
            request.setAttribute("error", "Số điện thoại đã tồn tại");
            request.getRequestDispatcher("/View/customer/RegisterPage.jsp").forward(request, response);
        } else if (KhachHangDAO.findByEmail(email) != null) {
            request.setAttribute("error", "Email đã tồn tại");
            request.getRequestDispatcher("/View/customer/RegisterPage.jsp").forward(request, response);
        } else {
            // Tạo tài khoản trước
            TaiKhoan taiKhoan = new TaiKhoan(phone, password, EQuyen.KHACH_HANG);
            TaiKhoanDAO.insert(taiKhoan);

            // Tạo khách hàng liên kết với tài khoản
            KhachHang khachHang = new KhachHang(taiKhoan, name, dob, address, email);
            KhachHangDAO.insert(khachHang);
            request.setAttribute("success", "Đăng ký thành công");
            request.getRequestDispatcher("/View/customer/RegisterPage.jsp").forward(request, response);
        }

    } catch (ParseException ex) {
        Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
    }
}

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
