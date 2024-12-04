package model;

import javax.persistence.*;
import java.math.BigDecimal; // Đảm bảo đã import BigDecimal
import java.util.Date;

@Entity
@Table(name = "Promotion")
public class Promotion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String ma;
    private String ten;
    private String moTa;

    @Enumerated(EnumType.STRING)
    private DiscountType kieuGiamGia;

    private BigDecimal giaTriGiam; 
    private Date ngayBatDau;
    private Date ngayKetThuc;
    private BigDecimal giaTriToiThieu; 
    
    @ManyToOne
    @JoinColumn(name = "sanPhamApDung")
    private Phone sanPhamApDung;

    @Column(nullable = false, columnDefinition = "int default -1")
    private int soLanSuDung;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
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

    public DiscountType getKieuGiamGia() {
        return kieuGiamGia;
    }

    public void setKieuGiamGia(DiscountType kieuGiamGia) {
        this.kieuGiamGia = kieuGiamGia;
    }

    public BigDecimal getGiaTriGiam() {
        return giaTriGiam;
    }

    public void setGiaTriGiam(BigDecimal giaTriGiam) {
        this.giaTriGiam = giaTriGiam;
    }

    public Date getNgayBatDau() {
        return ngayBatDau;
    }

    public void setNgayBatDau(Date ngayBatDau) {
        this.ngayBatDau = ngayBatDau;
    }

    public Date getNgayKetThuc() {
        return ngayKetThuc;
    }

    public void setNgayKetThuc(Date ngayKetThuc) {
        this.ngayKetThuc = ngayKetThuc;
    }

    public BigDecimal getGiaTriToiThieu() {
        return giaTriToiThieu;
    }

    public void setGiaTriToiThieu(BigDecimal giaTriToiThieu) {
        this.giaTriToiThieu = giaTriToiThieu;
    }

    public Phone getSanPhamApDung() {
        return sanPhamApDung;
    }

    public void setSanPhamApDung(Phone sanPhamApDung) {
        this.sanPhamApDung = sanPhamApDung;
    }

    public int getSoLanSuDung() {
        return soLanSuDung;
    }

    public void setSoLanSuDung(int soLanSuDung) {
        this.soLanSuDung = soLanSuDung;
    }

}