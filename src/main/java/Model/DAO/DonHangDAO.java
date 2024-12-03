/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DAO;

import Model.Entity.*;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.math.BigDecimal;
import java.util.List;
import murach.data.DBUtil;

public class DonHangDAO 
{
    public static List<DonHang> getOrderByKH(KhachHang khachHang, int page, int limit) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String jpql = "SELECT d FROM DonHang d WHERE d.khachHang = :khachHang";
        TypedQuery<DonHang> query = em.createQuery(jpql, DonHang.class);
        query.setParameter("khachHang", khachHang);

        int startIndex = (page - 1) * limit;

        query.setFirstResult(startIndex);
        query.setMaxResults(limit);

        return query.getResultList();
    }
    
    public static List<DonHang> getOrderByKH(KhachHang khachHang) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String jpql = "SELECT d FROM DonHang d WHERE d.khachHang=?1";
        TypedQuery<DonHang> query = em.createQuery(jpql, DonHang.class);
        query.setParameter(1, khachHang);

        return query.getResultList();
    }

    public static long getTotalOrdersByKH(KhachHang khachHang) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String jpql = "SELECT COUNT(d) FROM DonHang d WHERE d.khachHang = :khachHang";

        try {
            TypedQuery<Long> query = em.createQuery(jpql, Long.class);
            query.setParameter("khachHang", khachHang);
            return query.getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            em.close();
        }
    }

   public static void updateTotalPriceForOrder(DonHang donHang) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        // Sửa query để lấy tổng tiền của các sản phẩm trong đơn hàng
        String jpql = "SELECT COALESCE(SUM(ct.soLuong * dt.gia), 0) "
                + "FROM DonHangChiTiet ct "
                + "JOIN ct.dienThoai dt "
                + "WHERE ct.donHang = :donHang";

        try {
            // Bắt đầu giao dịch
            em.getTransaction().begin();

            // Tính tổng tiền của đơn hàng và lấy kết quả dưới dạng BigDecimal
            TypedQuery<BigDecimal> query = em.createQuery(jpql, BigDecimal.class);
            query.setParameter("donHang", donHang);

            // Lấy kết quả tổng tiền. Nếu không có, sẽ trả về 0
            BigDecimal totalPrice = query.getSingleResult();

            // Nếu totalPrice là null, gán giá trị mặc định là 0
            totalPrice = (totalPrice == null) ? BigDecimal.ZERO : totalPrice;
            
            if (donHang.getKhuyenMai() != null) {
                // Lấy giá trị khuyến mãi từ đối tượng KhuyenMai
                double discountAmount = donHang.getKhuyenMai().getSoTienGiam();
            
                BigDecimal discount = BigDecimal.valueOf(discountAmount);
                // Trừ khuyến mãi từ tổng tiền
                totalPrice = totalPrice.subtract(discount);
            }

            // Chuyển BigDecimal sang int
            int totalPriceInt = totalPrice.intValue(); // Hoặc bạn có thể sử dụng totalPrice.longValue() nếu cần

            // Lấy đối tượng DonHang từ cơ sở dữ liệu để cập nhật
            DonHang dbOrder = em.find(DonHang.class, donHang.getId());

            // Nếu đơn hàng tồn tại, cập nhật tổng tiền
            if (dbOrder != null) {
                dbOrder.setTongTien(totalPriceInt); // Cập nhật tổng tiền (chuyển từ BigDecimal sang int)
            }

            // Commit giao dịch
            em.getTransaction().commit();
        } catch (Exception e) {
            // Nếu có lỗi, rollback lại giao dịch
            e.printStackTrace();
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
        } finally {
            // Đảm bảo đóng EntityManager sau khi xử lý
            em.close();
        }
    }

    public static void updateTotalPriceForAllOrders(List<DonHang> donHangs) {
        for (DonHang donHang : donHangs) {
            updateTotalPriceForOrder(donHang);
        }
    }

}
