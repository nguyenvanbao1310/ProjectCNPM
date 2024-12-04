/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Entity;

import jakarta.persistence.*;
import java.time.LocalDate;


/**
 *
 * @author ASUS
 */
@Entity

public class DanhGia {
    
    
    @Id
    private String id;
    
    
    @ManyToOne
    @JoinColumn(name = "IdSP")
    private DienThoai dienThoai;
    
    @ManyToOne
    @JoinColumn(name = "IdKH")
    private KhachHang khachHang;
    private int soSao;
    private String noiDung;

    private LocalDate reviewDate;
    
    public DanhGia() {
    }

    public DanhGia(String id, DienThoai dienThoai, KhachHang khachHang, int soSao, String noiDung, LocalDate reviewDate) {
        this.id = id;
        this.dienThoai = dienThoai;
        this.khachHang = khachHang;
        this.soSao = soSao;
        this.noiDung = noiDung;
        this.reviewDate = reviewDate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    

    public DienThoai getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(DienThoai dienThoai) {
        this.dienThoai = dienThoai;
    }

    public KhachHang getKhachHang() {
        return khachHang;
    }
    
    public void setKhachHang(KhachHang khachHang) {
        this.khachHang = khachHang;
    }

    public int getSoSao() {
        return soSao;
    }

    public void setSoSao(int soSao) {
        this.soSao = soSao;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    public LocalDate getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(LocalDate reviewDate) {
        this.reviewDate = reviewDate;
    }

    
}
