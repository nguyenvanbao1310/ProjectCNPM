
package Model.DAO;

import Model.Entity.KhachHang;
import Model.Entity.TaiKhoan;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import murach.data.ConnectionPool;
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
    
    public static String GetMaxId()
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String maxId = null;
        String query = "SELECT MAX(Id) FROM KhachHang WHERE Id LIKE 'KH%'";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                maxId = rs.getString(1);
            }
        } catch (SQLException e) 
        {
            System.out.println(e);
        } finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
        return maxId;
    }
    
    public static String CreateId()
    {
        String maxId = GetMaxId();
        if(maxId == null)
        {
            return "KH001";
        }
        int number = Integer.parseInt(maxId.substring(2)) + 1;
        return String.format("KH%03d", number);
    }
    
    public static String getIDCustomer(TaiKhoan taiKhoan)
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            String jpql = "SELECT k.id FROM KhachHang k WHERE k.taiKhoan.sdt = :sdt";
            return em.createQuery(jpql, String.class)
                            .setParameter("sdt", taiKhoan.getSdt())
                            .getSingleResult();
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
