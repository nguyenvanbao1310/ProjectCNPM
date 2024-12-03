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
public class BaiViet {
    private String tieuDe;
    private String moDau;
    private String noiDung;
    private String ketLuan;
    private String hinhAnh1;
    private String hinhAnh2;
    private Date ngayTao;

    // Constructor
    public BaiViet(String tieuDe, String moDau, String noiDung, String ketLuan, String hinhAnh1, String hinhAnh2, Date ngayTao) {
        this.tieuDe = tieuDe;
        this.moDau = moDau;
        this.noiDung = noiDung;
        this.ketLuan = ketLuan;
        this.hinhAnh1 = hinhAnh1;
        this.hinhAnh2 = hinhAnh2;
        this.ngayTao = ngayTao;
    }

    // Empty constructor for loading data from database
    public BaiViet() {}

    // Getters and Setters
    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public String getMoDau() {
        return moDau;
    }

    public void setMoDau(String moDau) {
        this.moDau = moDau;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    public String getKetLuan() {
        return ketLuan;
    }

    public void setKetLuan(String ketLuan) {
        this.ketLuan = ketLuan;
    }

    public String getHinhAnh1() {
        return hinhAnh1;
    }

    public void setHinhAnh1(String hinhAnh1) {
        this.hinhAnh1 = hinhAnh1;
    }

    public String getHinhAnh2() {
        return hinhAnh2;
    }

    public void setHinhAnh2(String hinhAnh2) {
        this.hinhAnh2 = hinhAnh2;
    }

    public Date getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }

    // Phương thức này thay thế \n thành <br> để hiển thị đúng dấu xuống dòng trong JSP
    public String getNoiDungFormatted() {
        return noiDung != null ? noiDung.replace("\n", "<br>") : "";
    }
}