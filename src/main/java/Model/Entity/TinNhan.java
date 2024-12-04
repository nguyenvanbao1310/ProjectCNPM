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
@Table(name = "tinnhan")
public class TinNhan {
    
    @Id
    private String id; 
    
    
    @ManyToOne
    @JoinColumn(name = "IdNguoiGui")
    private TaiKhoan nguoiGui;
    @ManyToOne
    @JoinColumn(name = "IdNguoiNhan")
    private TaiKhoan nguoiNhan;
    private Date thoiGian;
    private String noiDung;

    public TinNhan() {
    }

    
    
    public TinNhan(String id, TaiKhoan nguoiGui, TaiKhoan nguoiNhan, Date thoiGian, String noiDung) {
        this.id = id;
        this.nguoiGui = nguoiGui;
        this.nguoiNhan = nguoiNhan;
        this.thoiGian = thoiGian;
        this.noiDung = noiDung;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    
   

    public TaiKhoan getNguoiGui() {
        return nguoiGui;
    }

    public void setNguoiGui(TaiKhoan nguoiGui) {
        this.nguoiGui = nguoiGui;
    }

    public TaiKhoan getNguoiNhan() {
        return nguoiNhan;
    }

    public void setNguoiNhan(TaiKhoan nguoiNhan) {
        this.nguoiNhan = nguoiNhan;
    }

    public Date getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(Date thoiGian) {
        this.thoiGian = thoiGian;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }
}
