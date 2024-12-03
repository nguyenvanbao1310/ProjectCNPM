/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO.BaiVietDAO;
import Model.Entity.BaiViet;
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
@WebServlet(name = "BaiVietController", urlPatterns = {"/blog"})
public class BaiVietController extends HttpServlet 
{

    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaiVietController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tieuDe = "iPhone 16 có gì mới? Tính năng nổi bật trên iPhone 16";

        if (tieuDe != null && !tieuDe.isEmpty()) {
            BaiViet bv = BaiVietDAO.getBaiVietByTieuDe(tieuDe);
            if (bv != null) {
                bv.setNoiDung(bv.getNoiDungFormatted());
                request.setAttribute("baiViet", bv); 
            } else {
                request.setAttribute("error", "Không tìm thấy bài viết với tiêu đề: " + tieuDe);
            }
        } else {
            request.setAttribute("error", "Lỗi tiêu đề bài viết.");
        }

        List<BaiViet> baiVietList = BaiVietDAO.danhSachBaiViet(); 

        if (baiVietList != null && !baiVietList.isEmpty()) {
            request.setAttribute("baiVietList", baiVietList); 
        } else {
            request.setAttribute("error", "Không tìm thấy bài viết.");
        }

        request.getRequestDispatcher("View/customer/Blog.jsp").forward(request, response);
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tieuDe = request.getParameter("tieuDe");
	    if (tieuDe != null && !tieuDe.isEmpty()) {
	        BaiViet bv = BaiVietDAO.getBaiVietByTieuDe(tieuDe);
	        if (bv != null) {
	            bv.setNoiDung(bv.getNoiDungFormatted());
	            request.setAttribute("baiViet", bv); 
	        } else {
	            request.setAttribute("error", "Không tìm thấy bài viết với tiêu đề: " + tieuDe);
	        }
	    } else {
	        request.setAttribute("error", "Lỗi tiêu đề bài viết.");
	    }
	    
	    List<BaiViet> baiVietList = BaiVietDAO.danhSachBaiViet(); 

        if (baiVietList != null && !baiVietList.isEmpty()) {
            request.setAttribute("baiVietList", baiVietList); 
        } else {
            request.setAttribute("error", "Không tìm thấy bài viết.");
        }
	    request.getRequestDispatcher("View/customer/Blog.jsp").forward(request, response);
	}

}
