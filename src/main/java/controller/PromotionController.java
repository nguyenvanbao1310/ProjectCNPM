package controller;

import model.Promotion;
import model.Phone;
import service.PromotionService;
import service.PhoneService;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import java.math.BigDecimal;

public class PromotionController extends HttpServlet {

    private PromotionService promotionService;
    private PhoneService phoneService;

    @Override
    public void init() throws ServletException {
        super.init();
        promotionService = new PromotionService();
        phoneService = new PhoneService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "list":
                List<Promotion> promotions = promotionService.getAllPromotions();
                req.setAttribute("promotions", promotions);
                req.getRequestDispatcher("/ListPromotion.jsp").forward(req, resp);
                break;

            case "edit":
                int id = Integer.parseInt(req.getParameter("id"));
                Promotion promotion = promotionService.getPromotionById(id);
                req.setAttribute("promotion", promotion);
                List<Phone> phones = phoneService.getAllPhones();
                req.setAttribute("phones", phones);
                req.getRequestDispatcher("/EditPromotion.jsp").forward(req, resp);
                break;

            case "createForm":
                phones = phoneService.getAllPhones();
                req.setAttribute("phones", phones);
                req.getRequestDispatcher("/CreatePromotion.jsp").forward(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");

        switch (action) {
            case "create":
                handleCreate(req, resp);
                break;

            case "update":
                handleUpdate(req, resp);
                break;

            case "delete":
                handleDelete(req, resp);
                break;
        }
    }

    private void handleCreate(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            Promotion promotion = extractPromotionFromRequest(req);
            promotionService.createPromotion(promotion);
            req.setAttribute("message", "Tạo mã khuyến mãi thành công!");
            req.setAttribute("messageType", "success");
        } catch (Exception e) {
            req.setAttribute("error", "Lỗi khi tạo mã khuyến mãi: " + e.getMessage());
            req.setAttribute("messageType", "error");
        }
        req.setAttribute("promotions", promotionService.getAllPromotions());
        req.getRequestDispatcher("/ListPromotion.jsp").forward(req, resp);
    }

    private void handleUpdate(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            Promotion promotion = extractPromotionFromRequest(req);
            Promotion existPromotion = promotionService.getPromotionById(promotion.getId());
            if (existPromotion == null) {
                req.setAttribute("error", "Không tồn tại mã khuyến mãi!");
                req.setAttribute("messageType", "error");
                req.setAttribute("promotions", promotionService.getAllPromotions());
                req.getRequestDispatcher("/ListPromotion.jsp").forward(req, resp);
                return;
            }
            promotionService.updatePromotion(promotion);
            req.setAttribute("message", "Cập nhật mã khuyến mãi thành công!");
            req.setAttribute("messageType", "success");
        } catch (Exception e) {
            req.setAttribute("error", "Lỗi khi cập nhật mã khuyến mãi: " + e.getMessage());
            req.setAttribute("messageType", "error");
        }
        req.setAttribute("promotions", promotionService.getAllPromotions());
        req.getRequestDispatcher("/ListPromotion.jsp").forward(req, resp);
    }

    private void handleDelete(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        Promotion existPromotion = promotionService.getPromotionById(id);
        if (existPromotion == null) {
            req.setAttribute("error", "Không tồn tại mã khuyến mãi!");
            req.setAttribute("messageType", "error");
            req.setAttribute("promotions", promotionService.getAllPromotions());
            req.getRequestDispatcher("/ListPromotion.jsp").forward(req, resp);
            return;
        }
        try {
            promotionService.deletePromotion(id);
            req.setAttribute("message", "Xóa mã khuyến mãi thành công!");
            req.setAttribute("messageType", "success");
        } catch (Exception e) {
            req.setAttribute("error", "Lỗi khi xóa mã khuyến mãi: " + e.getMessage());
            req.setAttribute("messageType", "error");
        }
        req.setAttribute("promotions", promotionService.getAllPromotions());
        req.getRequestDispatcher("/ListPromotion.jsp").forward(req, resp);
    }

    private Promotion extractPromotionFromRequest(HttpServletRequest req) throws ParseException {
        int id = req.getParameter("id") != null && !req.getParameter("id").isEmpty() ? Integer.parseInt(req.getParameter("id")) : 0;
        String code = req.getParameter("code");
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String discountType = req.getParameter("discountType");
        BigDecimal discountValue = new BigDecimal(req.getParameter("discountValue"));
        Date startDate = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("startDate"));
        Date endDate = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("endDate"));
        BigDecimal minOrderValue = new BigDecimal(req.getParameter("minOrderValue"));
        String productCategory = req.getParameter("productCategory");
        int usageLimit = req.getParameter("usageLimit") != null && !req.getParameter("usageLimit").isEmpty() ? Integer.parseInt(req.getParameter("usageLimit")) : -1;

        Phone phone = productCategory.equals("all") ? null : phoneService.getAllPhones().stream()
                .filter(p -> p.getId().equals(productCategory))
                .findFirst()
                .orElse(null);

        Promotion promotion = new Promotion();
        promotion.setId(id);
        promotion.setMa(code);
        promotion.setTen(name);
        promotion.setMoTa(description);
        promotion.setKieuGiamGia(discountType.equals("percentage") ? model.DiscountType.percentage : model.DiscountType.amount);
        if(discountValue != null && discountValue.doubleValue() > 0 && discountType.equals("percentage")) {
            discountValue = new BigDecimal(discountValue.doubleValue() / 100);
        }
        promotion.setGiaTriGiam(discountValue);
        promotion.setNgayBatDau(startDate);
        promotion.setNgayKetThuc(endDate);
        promotion.setGiaTriToiThieu(minOrderValue);
        promotion.setSanPhamApDung(phone);
        promotion.setSoLanSuDung(usageLimit);

        return promotion;
    }
}
