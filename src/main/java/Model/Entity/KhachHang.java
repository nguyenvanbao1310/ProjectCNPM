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
    @Column(name = "Id", length = 15)
    private String id; 
    
    @OneToOne
    @JoinColumn(name = "Sdt", referencedColumnName = "Sdt", insertable = false, updatable = false)
    private TaiKhoan taiKhoan;
    
    @OneToMany(mappedBy = "khachHang")
    private List<DonHang> donHangs;

    @OneToMany(mappedBy = "khachHang")
    private List<DanhGia> danhGias;
    
    @OneToMany(mappedBy = "khachHang", cascade = CascadeType.ALL)
    private List<GioHang> gioHangList;
    
    public KhachHang(){
        super();
    }

    public KhachHang(TaiKhoan taiKhoan, String id, String ten, Date ngaySinh, String diaChi, String email, String sdt )
    {
        super(ten, ngaySinh, diaChi, email, sdt);
        this.id = id;
        this.taiKhoan = taiKhoan;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    
    public List<DonHang> getDonHangs() {
        return donHangs;
    }

    public void setDonHangs(List<DonHang> donHangs) {
        this.donHangs = donHangs;
    }

    public List<DanhGia> getDanhGias() {
        return danhGias;
    }

    public void setDanhGias(List<DanhGia> danhGias) {
        this.danhGias = danhGias;
    }
    
    public TaiKhoan getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(TaiKhoan taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

}
