/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import jakarta.persistence.EntityManager;
import murach.data.DBUtil;


public class GenerateId {
    
    public static  String generateId(Class<?> clazz, String prefix){
        EntityManager entityManager = DBUtil.getEmFactory().createEntityManager();
        String id = "";
        String className = clazz.getSimpleName();
        try {
            String sql = "select max(obj.id) from "+ className + " obj";
            
            String maxId = (String) entityManager.createQuery(sql).getSingleResult();
        
            if (maxId == null) {
                return String.format("%s00001", prefix);
            } else {
                int num = Integer.parseInt(maxId.substring(prefix.length())) + 1;
                id = String.format("%s%05d", prefix, num);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return id;
    }
}
