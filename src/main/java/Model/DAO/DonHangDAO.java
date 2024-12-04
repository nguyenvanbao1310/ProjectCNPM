/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DAO;

import Model.Entity.*;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;
import murach.data.DBUtil;

/**
 *
 * @author daoducdanh
 */
public class DonHangDAO {

    public static List<DonHang> getOrderByKH(KhachHang khachHang) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String jpql = "SELECT d FROM DonHang d WHERE d.khachHang=?1";
        TypedQuery<DonHang> query = em.createQuery(jpql, DonHang.class);
        query.setParameter(1, khachHang);

        return query.getResultList();
    }
}
