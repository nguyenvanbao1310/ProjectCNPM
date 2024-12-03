/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DAO;
import Model.Entity.Item;
import Model.Entity.DienThoai;
import Model.Entity.GioHang;
import Model.Entity.ItemId;
import jakarta.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import murach.data.DBUtil;
/**
 *
 * @author ASUS
 */
public class ItemDAO {
    public static void createItem(String idGioHang, String idSP, int quantity) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            
            GioHang gioHang = em.find(GioHang.class, idGioHang);
            if (gioHang == null) {
                throw new IllegalArgumentException("Giỏ hàng không tồn tại!");
            }
            
            ItemId itemId = new ItemId(idGioHang, idSP);
            DienThoai dienThoai = em.find(DienThoai.class, idSP);
            Item newItem = new Item(itemId, gioHang, dienThoai, quantity);
            em.persist(newItem);
            trans.commit();
        } catch (Exception e) {
            System.out.println("Error creating Item: " + e.getMessage());
            if (trans.isActive()) {
                trans.rollback();
            }
        } finally {
            em.close();
        }
    }
    public static List<Item> findItemsByIds(List<Map.Entry<String, String>> itemPairs) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            // Tạo câu truy vấn động cho cặp idGioHang:idSP
            StringBuilder queryStr = new StringBuilder("SELECT i FROM Item i WHERE ");
            for (int i = 0; i < itemPairs.size(); i++) {
                if (i > 0) {
                    queryStr.append(" OR ");
                }
                queryStr.append("(i.id.idGioHang = :idGioHang" + i + " AND i.id.idSP = :idSP" + i + ")");
            }

            TypedQuery<Item> query = em.createQuery(queryStr.toString(), Item.class);

            // Thiết lập tham số cho từng cặp idGioHang:idSP
            for (int i = 0; i < itemPairs.size(); i++) {
                Map.Entry<String, String> pair = itemPairs.get(i);
                query.setParameter("idGioHang" + i, pair.getKey());
                query.setParameter("idSP" + i, pair.getValue());
            }
            
            List<Item> items = query.getResultList();
            
            for (Item item : items) {
                em.refresh(item);
            }
            return items;
            
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>(); // Trả về danh sách rỗng nếu có lỗi
        } finally {
            em.close(); // Đảm bảo đóng EntityManager
        }
    }
}
