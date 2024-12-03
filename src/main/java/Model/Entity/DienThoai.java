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
@Table(name = "DienThoai")
public class DienThoai {
    @Id
    @Column(name = "Id", length = 15)
    private String id;

    @Column(name = "Ten", length = 100, nullable = false)
    private String ten;

    @Column(name = "HeDieuHanh", length = 50)
    private String heDieuHanh;

    @Column(name = "Ram")
    private int ram;

    @Column(name = "Rom")
    private int rom;

    @Column(name = "Cpu", length = 100)
    private String cpu;

    @Column(name = "MauSac", length = 50)
    private String mauSac;

    @Column(name = "ManHinh", length = 50)
    private String manHinh;

    @Column(name = "SoSim")
    private int soSim;

    @Column(name = "Loa", length = 50)
    private String loa;

    @Column(name = "Pin")
    private int pin;

    @Column(name = "KichThuoc", precision = 3, scale = 1)
    private float kichThuoc;

    @Column(name = "KhoiLuong", precision = 5, scale = 2)
    private float khoiLuong;

    @Column(name = "ChatLieu", length = 50)
    private String chatLieu;

    @Column(name = "Gia")
    private int gia;
    
    @Column(name = "HinhAnh", length = 255)
    private String hinhAnh;
    

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

    public String getHeDieuHanh() {
        return heDieuHanh;
    }

    public void setHeDieuHanh(String heDieuHanh) {
        this.heDieuHanh = heDieuHanh;
    }

    public int getRam() {
        return ram;
    }

    public void setRam(int ram) {
        this.ram = ram;
    }

    public int getRom() {
        return rom;
    }

    public void setRom(int rom) {
        this.rom = rom;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getMauSac() {
        return mauSac;
    }

    public void setMauSac(String mauSac) {
        this.mauSac = mauSac;
    }

    public String getManHinh() {
        return manHinh;
    }

    public void setManHinh(String manHinh) {
        this.manHinh = manHinh;
    }

    public int getSoSim() {
        return soSim;
    }

    public void setSoSim(int soSim) {
        this.soSim = soSim;
    }

    public String getLoa() {
        return loa;
    }

    public void setLoa(String loa) {
        this.loa = loa;
    }

    public int getPin() {
        return pin;
    }

    public void setPin(int pin) {
        this.pin = pin;
    }

    public float getKichThuoc() {
        return kichThuoc;
    }

    public void setKichThuoc(float kichThuoc) {
        this.kichThuoc = kichThuoc;
    }

    public float getKhoiLuong() {
        return khoiLuong;
    }

    public void setKhoiLuong(float khoiLuong) {
        this.khoiLuong = khoiLuong;
    }

    public String getChatLieu() {
        return chatLieu;
    }

    public void setChatLieu(String chatLieu) {
        this.chatLieu = chatLieu;
    }
    
    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }
    
    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }
    
}
