/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DAO;
import Model.Entity.*;
import jakarta.persistence.EntityManager;
import java.util.Optional;
import murach.data.DBUtil;
/**
 *
 * @author daoducdanh
 */
public class DienThoaiDAO {
    
    public static Optional<DienThoai> findById(String id){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        return Optional.ofNullable(em.find(DienThoai.class, id));
    }
}
