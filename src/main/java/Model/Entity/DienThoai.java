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
public class DienThoai {
    @Id
    private String id;
    private String ten;
    private String heDieuHanh;
    private int ram;
    private int rom;
    private String cpu;
    private String mauSac;
    private String manHinh;
    private int soSim;
    private String loa;
    private int pin;
    private float kichThuoc;
    private float khoiLuong;
    private String chatLieu;
    private int gia ;
    private String hinhAnh;

    public DienThoai() {
    }

    public DienThoai(String id, String ten, String heDieuHanh, int ram, int rom, String cpu, String mauSac, String manHinh, int soSim, String loa, int pin, float kichThuoc, float khoiLuong, String chatLieu, int gia, String hinhAnh) {
        this.id = id;
        this.ten = ten;
        this.heDieuHanh = heDieuHanh;
        this.ram = ram;
        this.rom = rom;
        this.cpu = cpu;
        this.mauSac = mauSac;
        this.manHinh = manHinh;
        this.soSim = soSim;
        this.loa = loa;
        this.pin = pin;
        this.kichThuoc = kichThuoc;
        this.khoiLuong = khoiLuong;
        this.chatLieu = chatLieu;
        this.gia = gia;
        this.hinhAnh = hinhAnh;
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
