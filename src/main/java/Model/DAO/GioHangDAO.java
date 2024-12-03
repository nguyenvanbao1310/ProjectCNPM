/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DAO;

import Model.Entity.DienThoai;
import Model.Entity.GioHang;
import Model.Entity.Item;
import Model.Entity.ItemId;
import jakarta.persistence.*;
import java.util.ArrayList;
import murach.data.DBUtil;

/**
 *
 * @author ASUS
 */
public class GioHangDAO 
{
    public static GioHang getGioHangByKhachHang(String idKH)
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            TypedQuery<GioHang> query = em.createQuery("SELECT g FROM GioHang g WHERE g.khachHang.id = :idKH", GioHang.class);
            query.setParameter("idKH", idKH);
            GioHang gh = query.getSingleResult();
            em.refresh(gh); 
            return gh;
        } catch (NoResultException e) {
            return null; 
        } finally {
            em.close(); 
        }
    }
    
    public static void addItem(String idGioHang, String idSP) 
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();

            Item existingItem = em.find(Item.class, new ItemId(idGioHang, idSP));
            if (existingItem != null) {
                existingItem.setSoLuong(existingItem.getSoLuong() + 1);
                em.merge(existingItem);
            } else {
                ItemDAO.createItem(idGioHang, idSP, 1);
                
            }

            trans.commit();
        } catch (Exception e) {
            System.out.println("Error in addOrUpdateItem: " + e.getMessage());
            if (trans.isActive()) {
                trans.rollback();
            }
        } finally {
            em.close();
        }
    }
    
    public static void deleteItem(String idGioHang, String idSP) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();

            Item itemToDelete = em.find(Item.class, new ItemId(idGioHang, idSP));
            if (itemToDelete != null) {
                em.remove(itemToDelete);
            }
            trans.commit();
        } catch (Exception e) {
            System.out.println("Error deleting item: " + e.getMessage());
            if (trans.isActive()) {
                trans.rollback();
            }
        } finally {
            em.close();
        }
    }
    
    public static void updateItem(String idGioHang, String idSP, int quantity) 
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();

            Item existingItem = em.find(Item.class, new ItemId(idGioHang, idSP));
            existingItem.setSoLuong(quantity);
            em.merge(existingItem);
            trans.commit();
        } catch (Exception e) {
            System.out.println("Error in addOrUpdateItem: " + e.getMessage());
            if (trans.isActive()) {
                trans.rollback();
            }
        } finally {
            em.close();
        }
    }
    
    public static void addItemSS(GioHang gh, String proId)
    {
        DienThoai dt = DienThoaiDAO.getProduct(proId);
        Item add = new Item(new ItemId(gh.getIdGioHang(),proId), gh, dt, 1);
        
        if (gh.getItems() == null) {
            gh.setItems(new ArrayList<>());
        }
        
        for(Item i: gh.getItems())
        {
            if(i.getId().equals(add.getId())){
                i.setSoLuong(i.getSoLuong()+1);
                return;
            }
        }

        gh.getItems().add(add);
    }
    
    public static void  removeItemSS(GioHang a, String id)
    {
        a.getItems().removeIf(item -> item.getDienThoai().getId().equals(id));
    }
    
    public static void updateItemSS(GioHang gh, String id, int quantity)
    {
        for(Item i: gh.getItems()){
            if(i.getDienThoai().getId().equals(id))
            { 
                if(quantity ==0)
                {
                    removeItemSS(gh,id);
                }
                else
                {
                    i.setSoLuong(quantity);
                }
 
                return;
            }
        }
    }

}
