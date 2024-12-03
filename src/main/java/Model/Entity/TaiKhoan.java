/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Entity;

import jakarta.persistence.*;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "TaiKhoan")
public class TaiKhoan {
    
    @Id
    @Column(name = "Sdt", length = 15)
    private String sdt;
    
    @Column(name = "MatKhau", length = 255)
    private String matKhau;
    
    @Enumerated(EnumType.STRING)
    private EQuyen quyen;


   @OneToOne(mappedBy = "taiKhoan")
    private KhachHang khachHang;
   
   @OneToOne(mappedBy = "taiKhoan")
    private ChuShop chuShop;
   
    public TaiKhoan() {
    }
    
    public TaiKhoan(String sdt, String matKhau, EQuyen quyen)
    {
        this.sdt = sdt;
        this.matKhau = matKhau;
        this.quyen = quyen;
    }
    
    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public EQuyen getQuyen() {
        return quyen;
    }

    public void setQuyen(EQuyen quyen) {
        this.quyen = quyen;
    }

}
