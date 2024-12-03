/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DAO;

import Model.Entity.DienThoai;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import murach.data.DBUtil;

/**
 *
 * @author ASUS
 */
public class DienThoaiDAO {
    public static List<DienThoai> selectProducts() 
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM DienThoai p"; 
        TypedQuery<DienThoai> q = em.createQuery(qString, DienThoai.class);

        List<DienThoai> dt = null;
        try {
            dt = q.getResultList();
            if (dt == null || dt.isEmpty()) {
                System.out.println("No products found");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
        }
        return dt;
    }
    
    public static List<DienThoai> selectProductsTop8() 
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM DienThoai p ORDER BY p.gia DESC"; 
        TypedQuery<DienThoai> q = em.createQuery(qString, DienThoai.class);
        q.setMaxResults(8);
        List<DienThoai> dt = null;
        try {
            dt = q.getResultList();
            if (dt == null || dt.isEmpty()) {
                System.out.println("No products found");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
        }
        return dt;
    }
    
    public static DienThoai getProduct(String id)
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM DienThoai p WHERE p.id = :id"; 
        TypedQuery<DienThoai> q = em.createQuery(qString, DienThoai.class);
        q.setParameter("id", id);
        DienThoai dt = null;
        try {
            dt = q.getSingleResult();  
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Product not found or other error.");
        } finally {
            em.close();
        }
        return dt;
    }
    
    public static Optional<DienThoai> findById(String id){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        return Optional.ofNullable(em.find(DienThoai.class, id));
    }
    
    public static List<DienThoai> searchProducts(String keyword) 
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        List<DienThoai> results = new ArrayList<>();
        try {
            em.getTransaction().begin();

            if (keyword == null || keyword.isEmpty()) {
                // Nếu không có từ khóa, trả về toàn bộ sản phẩm
                results = em.createQuery("SELECT d FROM DienThoai d", DienThoai.class).getResultList();
            } else {
                // Tách từ khóa
                String[] keywords = keyword.split(" ");
                StringBuilder queryBuilder = new StringBuilder("SELECT d FROM DienThoai d WHERE ");

                List<String> conditions = new ArrayList<>();
                for (String word : keywords) {
                    conditions.add("LOWER(d.ten) LIKE LOWER(:keyword" + conditions.size() + ")");
                }

                queryBuilder.append(String.join(" AND ", conditions));

                // Tạo truy vấn JPA
                TypedQuery<DienThoai> query = em.createQuery(queryBuilder.toString(), DienThoai.class);

                // Gán tham số cho từ khóa
                for (int i = 0; i < keywords.length; i++) {
                    query.setParameter("keyword" + i, "%" + keywords[i] + "%");
                }

                // Lấy danh sách kết quả
                results = query.getResultList();
            }

            em.getTransaction().commit();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            e.printStackTrace();
        } finally {
            em.close();
        }

        return results;
    }

    public List<DienThoai> findAllProducts() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        return em.createQuery("SELECT d FROM DienThoai d", DienThoai.class).getResultList();
    }
}
