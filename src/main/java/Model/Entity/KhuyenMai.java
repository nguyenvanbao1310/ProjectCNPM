/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Entity;

import jakarta.persistence.*;
import java.util.Date;

/**
 *
 * @author ASUS
 */
@Entity
public class KhuyenMai {
    @Id
    private String id; 

    @Column(name = "Ten", nullable = false)
    private String ten;

    @Column(name = "MoTa")
    private String moTa;

    @Column(name = "SoTienGiam")
    private Double soTienGiam;

    @Column(name = "PhanTramGiam")
    private Double phanTramGiam;

    @Column(name = "NgayBatDau")
    private Date ngayBatDau;

    @Column(name = "NgayKetThuc")
    private Date ngayKetThuc;

    public KhuyenMai() {
    }

    public KhuyenMai(String id, String ten, String moTa, Double soTienGiam, Double phanTramGiam, Date ngayBatDau, Date ngayKetThuc) {
        this.id = id;
        this.ten = ten;
        this.moTa = moTa;
        this.soTienGiam = soTienGiam;
        this.phanTramGiam = phanTramGiam;
        this.ngayBatDau = ngayBatDau;
        this.ngayKetThuc = ngayKetThuc;
    }
    
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    



    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public Double getSoTienGiam() {
        return soTienGiam;
    }

    public void setSoTienGiam(Double soTienGiam) {
        this.soTienGiam = soTienGiam;
    }

    public Double getPhanTramGiam() {
        return phanTramGiam;
    }

    public void setPhanTramGiam(Double phanTramGiam) {
        this.phanTramGiam = phanTramGiam;
    }

    public java.util.Date getNgayBatDau() {
        return ngayBatDau;
    }

    public void setNgayBatDau(java.util.Date ngayBatDau) {
        this.ngayBatDau = ngayBatDau;
    }

    public java.util.Date getNgayKetThuc() {
        return ngayKetThuc;
    }

    public void setNgayKetThuc(java.util.Date ngayKetThuc) {
        this.ngayKetThuc = ngayKetThuc;
    }

}
