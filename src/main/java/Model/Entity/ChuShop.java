/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Entity;

import jakarta.persistence.*;
import java.util.Date;
import java.util.List;

/**
 *
 * @author ASUS
 */
@Entity
public class ChuShop extends NguoiDung{
    
    
    @Id
    private String id;

    public ChuShop() {
    }


    public ChuShop(String id, String ten, Date ngaySinh, String diaChi, String email) {
        super(ten, ngaySinh, diaChi, email);
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    
    
    

}
