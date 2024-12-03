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
@Table(name = "DonHang")
public class DonHang {
    @Id
    private String id;
    private String ngayDat;
    private String ngayThanhToan;
    private String diaChiGiaoHang;
    private String tinhTrang;
    private int tongTien;

    @ManyToOne
    @JoinColumn(name = "IdKH" , referencedColumnName = "Id")
    private KhachHang khachHang;

    @OneToMany(mappedBy = "donHang")
    private List<DonHangChiTiet> chiTietDonHangs;
    
    @OneToOne
    @JoinColumn(name = "KhuyenMaiId", referencedColumnName = "Id")
    private KhuyenMai khuyenMai;

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public KhuyenMai getKhuyenMai() {
        return khuyenMai;
    }

    public void setKhuyenMai(KhuyenMai khuyenMai) {
        this.khuyenMai = khuyenMai;
    }

    public int getTongTien() {
        return tongTien;
    }

    public void setTongTien(int tongTien) {
        this.tongTien = tongTien;
    }

    public String getNgayDat() {
        return ngayDat;
    }

    public void setNgayDat(String ngayDat) {
        this.ngayDat = ngayDat;
    }

    public String getNgayThanhToan() {
        return ngayThanhToan;
    }

    public void setNgayThanhToan(String ngayThanhToan) {
        this.ngayThanhToan = ngayThanhToan;
    }

    public String getDiaChiGiaoHang() {
        return diaChiGiaoHang;
    }

    public void setDiaChiGiaoHang(String diaChiGiaoHang) {
        this.diaChiGiaoHang = diaChiGiaoHang;
    }

    public String getTinhTrang() {
        return tinhTrang;
    }

    public void setTinhTrang(String tinhTrang) {
        this.tinhTrang = tinhTrang;
    }

    public KhachHang getKhachHang() {
        return khachHang;
    }

    public void setKhachHang(KhachHang khachHang) {
        this.khachHang = khachHang;
    }

    public List<DonHangChiTiet> getChiTietDonHangs() {
        return chiTietDonHangs;
    }

    public void setChiTietDonHangs(List<DonHangChiTiet> chiTietDonHangs) {
        this.chiTietDonHangs = chiTietDonHangs;
    }
}
