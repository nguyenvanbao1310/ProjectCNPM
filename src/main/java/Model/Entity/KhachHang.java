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
public class KhachHang extends NguoiDung {
    
    @Id
    private String id; 
    
    @OneToOne
    @JoinColumn(name = "Sdt")
    private TaiKhoan taiKhoan;

    public KhachHang(){
        super();
    }

    public KhachHang(String id, TaiKhoan taiKhoan, String ten, Date ngaySinh, String diaChi, String email) {
        super(ten, ngaySinh, diaChi, email);
        this.id = id;
        this.taiKhoan = taiKhoan;
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
    
    @Override
    public String getTen() {
        return super.getTen();
    }


    @Override
    public Date getNgaySinh() {
        return super.getNgaySinh();
    }


    @Override
    public String getDiaChi() {
        return super.getDiaChi();
    }
    public void setDiaChi(String diaChi) {
        super.setDiaChi(diaChi);
    }



    @Override
    public String getEmail() {
        return super.getEmail();
    }
    
    @Override
    public void setEmail(String email) {
        super.setEmail(email);
    }
    
    @Override
    public void setTen(String ten) {
        super.setTen(ten);
    }
    
    @Override
    public void setNgaySinh(Date ngaySinh) {
        super.setNgaySinh(ngaySinh);
    }
    
    

    
    

}
