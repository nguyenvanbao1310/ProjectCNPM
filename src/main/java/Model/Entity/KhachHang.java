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
@Table(name = "KhachHang")
public class KhachHang extends NguoiDung{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @OneToOne
    @JoinColumn(name = "Sdt")
    private TaiKhoan taiKhoan;

    public KhachHang(){
        super();
    }

    public KhachHang( TaiKhoan taiKhoan, String ten, Date ngaySinh, String diaChi, String email) {
        super(ten, ngaySinh, diaChi, email);
        this.taiKhoan = taiKhoan;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    public TaiKhoan getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(TaiKhoan taiKhoan) {
        this.taiKhoan = taiKhoan;
    }
    
    

}
