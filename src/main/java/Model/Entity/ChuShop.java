/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Entity;

import jakarta.persistence.*;
import java.util.List;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "ChuShop")
public class ChuShop extends NguoiDung{
    @Id
    private String id;
    
    @OneToOne
    @JoinColumn(name = "Sdt", referencedColumnName = "Sdt", insertable = false, updatable = false)
    private TaiKhoan taiKhoan;
    
    public ChuShop()
    {
        
    }
        
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
        public TaiKhoan getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(TaiKhoan taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

}
