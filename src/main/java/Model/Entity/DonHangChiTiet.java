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
@Table(name = "DonHangChiTiet")
public class DonHangChiTiet {
    @Id
    private String id; 

    @ManyToOne
    @JoinColumn(name = "IdDH")
    private DonHang donHang; 

    @ManyToOne
    @JoinColumn(name = "IdSP")
    private DienThoai dienThoai;

    private int soLuong; 

    public DonHangChiTiet() {
    }

    public DonHangChiTiet(String id, DonHang donHang, DienThoai dienThoai, int soLuong) {
        this.id = id;
        this.donHang = donHang;
        this.dienThoai = dienThoai;
        this.soLuong = soLuong;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    

    
    public DonHang getDonHang() {
        return donHang;
    }

    public void setDonHang(DonHang donHang) {
        this.donHang = donHang;
    }

    public DienThoai getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(DienThoai dienThoai) {
        this.dienThoai = dienThoai;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }
}
