/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DAO;

import Model.Entity.*;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;
import murach.data.DBUtil;
import util.GenerateId;

/**
 *
 * @author daoducdanh
 */
public class DanhGiaDAO {

    public static DanhGia getDanhGiaByDTAndKH(DienThoai dienThoai, KhachHang khachHang) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            String jpql = "SELECT d FROM DanhGia d WHERE d.dienThoai = :dienThoai and d.khachHang = :khachHang";
            TypedQuery<DanhGia> query = em.createQuery(jpql, DanhGia.class);
            query.setParameter("dienThoai", dienThoai);
            query.setParameter("khachHang", khachHang);

            return query.getSingleResult();
        } catch (jakarta.persistence.NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }

    public static void insert(DanhGia danhGia) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();
            danhGia.setId(GenerateId.generateId(DanhGia.class, "DG"));
            em.persist(danhGia);

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
}
