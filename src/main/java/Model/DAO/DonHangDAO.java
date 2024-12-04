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
        EntityManager em = null;
        try {
            em = DBUtil.getEmFactory().createEntityManager();
            String jpql = "SELECT d FROM DonHang d WHERE d.khachHang = :khachHang ORDER BY d.id DESC";
            TypedQuery<DonHang> query = em.createQuery(jpql, DonHang.class);
            query.setParameter("khachHang", khachHang);

            int startIndex = (page - 1) * limit;
            query.setFirstResult(startIndex);
            query.setMaxResults(limit);

            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Lỗi khi truy xuất dữ liệu đơn hàng. Vui lòng thử lại sau.");
        } finally {
            if (em != null && em.isOpen()) {
                em.close();
            }
        }
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
        String jpql = "SELECT COALESCE(SUM(ct.soLuong * dt.gia), 0) "
                + "FROM DonHangChiTiet ct "
                + "JOIN ct.dienThoai dt "
                + "WHERE ct.donHang = :donHang";

        try {
            em.getTransaction().begin();

            TypedQuery<BigDecimal> query = em.createQuery(jpql, BigDecimal.class);
            query.setParameter("donHang", donHang);

            BigDecimal totalPrice = query.getSingleResult();

            totalPrice = (totalPrice == null) ? BigDecimal.ZERO : totalPrice;
            
            if (donHang.getKhuyenMai() != null) {
                double discountAmount = donHang.getKhuyenMai().getSoTienGiam();
            
                BigDecimal discount = BigDecimal.valueOf(discountAmount);
                totalPrice = totalPrice.subtract(discount);
            }


            int totalPriceInt = totalPrice.intValue(); 

            DonHang dbOrder = em.find(DonHang.class, donHang.getId());

            if (dbOrder != null) {
                dbOrder.setTongTien(totalPriceInt); 
            }

            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
        } finally {
            em.close();
        }
    }

    public static void updateTotalPriceForAllOrders(List<DonHang> donHangs) {
        for (DonHang donHang : donHangs) {
            updateTotalPriceForOrder(donHang);
        }
    }
    public static List<DonHang> getOrderByKHAndStatus(KhachHang khachHang, String status, int page, int limit) {
        EntityManager em = null;
        try {
        em = DBUtil.getEmFactory().createEntityManager();
        String jpql = "SELECT d FROM DonHang d WHERE d.khachHang = :khachHang";
        if ("Đang giao hàng".equals(status)) {
            jpql += " AND d.tinhTrang = 'Đang giao hàng'";
        } else if ("Hoàn thành".equals(status)) {
            jpql += " AND d.tinhTrang = 'Hoàn thành'";
        } else if ("Chưa giải quyết".equals(status)) {
            jpql += " AND d.tinhTrang = 'Chưa giải quyết'";
        } else if ("Đã hủy".equals(status)) {
            jpql += " AND d.tinhTrang = 'Đã hủy'";
        }
        TypedQuery<DonHang> query = em.createQuery(jpql, DonHang.class);
        query.setParameter("khachHang", khachHang);

        int startIndex = (page - 1) * limit;

        query.setFirstResult(startIndex);
        query.setMaxResults(limit);

        return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Lỗi khi truy xuất dữ liệu đơn hàng. Vui lòng thử lại sau.");
        } finally {
            if (em != null && em.isOpen()) {
                em.close();
            }
        }
        
    }
    public static long getTotalOrdersByKHAndStatus(KhachHang khachHang, String status) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String jpql = "SELECT COUNT(d) FROM DonHang d WHERE d.khachHang = :khachHang";
        if ("Đang giao hàng".equals(status)) {
            jpql += " AND d.tinhTrang = 'Đang giao hàng'";
        } else if ("Hoàn thành".equals(status)) {
            jpql += " AND d.tinhTrang = 'Hoàn thành'";
        } else if ("Chưa giải quyết".equals(status)) {
            jpql += " AND d.tinhTrang = 'Chưa giải quyết'";
        } else if ("Đã hủy".equals(status)) {
            jpql += " AND d.tinhTrang = 'Đã hủy'";
        }
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
    public static void cancelOrder(String orderId) {
        EntityManager em = null;
        try {
            em = DBUtil.getEmFactory().createEntityManager();
            em.getTransaction().begin();

            // Tìm đơn hàng theo id
            DonHang donHang = em.find(DonHang.class, orderId);
            if (donHang != null) {
                // Cập nhật trạng thái đơn hàng
                donHang.setTinhTrang("Đã hủy");
                em.merge(donHang);
            } else {
                throw new RuntimeException("Không tìm thấy đơn hàng với ID: " + orderId);
            }

            em.getTransaction().commit();
        } catch (Exception e) {
            if (em != null && em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            e.printStackTrace();
            throw new RuntimeException("Lỗi khi hủy đơn hàng. Vui lòng thử lại sau.");
        } finally {
            if (em != null && em.isOpen()) {
                em.close();
            }
        }
    }
}
