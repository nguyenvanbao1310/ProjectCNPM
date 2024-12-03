
package Model.DAO;

import jakarta.persistence.EntityManager;
import java.util.List;
import Model.Entity.*;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import murach.data.DBUtil;


public class TaiKhoanDAO {

    public static void insert(TaiKhoan taiKhoan) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();
            
            em.persist(taiKhoan);
            
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
    
    public static TaiKhoan findByPhone(String phone) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            
            String jpql = "SELECT t FROM TaiKhoan t WHERE t.sdt = :phone";
            TypedQuery<TaiKhoan> query = em.createQuery(jpql, TaiKhoan.class);
            query.setParameter("phone", phone);

            return query.getSingleResult();
        } catch (jakarta.persistence.NoResultException e) {
            return null;
        } finally {
            em.close(); 
        }
    }
    
    public static TaiKhoan login(String phone, String password) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            
            String jpql = "SELECT t FROM TaiKhoan t WHERE t.sdt = :phone AND t.matKhau = :password";
            TypedQuery<TaiKhoan> query = em.createQuery(jpql, TaiKhoan.class);
            query.setParameter("phone", phone);
            query.setParameter("password", password);

            return query.getSingleResult();
        } catch (jakarta.persistence.NoResultException e) {
            return null;
        } finally {
            em.close(); 
        }
    }
}
