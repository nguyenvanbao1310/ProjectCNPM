
package Model.DAO;

import Model.Entity.*;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import murach.data.DBUtil;

public class KhachHangDAO {

    public static void insert(KhachHang khachHang) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();

            em.persist(khachHang);

            transaction.commit();
        } catch (RuntimeException e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            throw e;
        } finally {
            em.close();
        }
    }
    
    public static void update(KhachHang khachHang) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();

            em.merge(khachHang);

            transaction.commit();
        } catch (RuntimeException e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            throw e;
        } finally {
            em.close();
        }
    }
    
    public static KhachHang findByEmail(String email) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            String jpql = "SELECT k FROM KhachHang k WHERE k.email = :email";
            TypedQuery<KhachHang> query = em.createQuery(jpql, KhachHang.class);
            query.setParameter("email", email);

            return query.getSingleResult();
        } catch (jakarta.persistence.NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }
    
    
    
    public static KhachHang findByTaiKhoan(TaiKhoan taiKhoan) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            String jpql = "SELECT k FROM KhachHang k WHERE k.taiKhoan = :taiKhoan";
            TypedQuery<KhachHang> query = em.createQuery(jpql, KhachHang.class);
            query.setParameter("taiKhoan", taiKhoan);

            return query.getSingleResult();
        } catch (jakarta.persistence.NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }
    
}
