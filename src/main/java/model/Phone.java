package model;

import javax.persistence.*;

@Entity
@Table(name = "DienThoai")
public class Phone {

    @Id
    @Column(name = "Id", length = 15)
    private String id;

    @Column(name = "Ten", nullable = false, length = 100, columnDefinition = "VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci")
    private String ten;

    @Column(name = "HeDieuHanh", length = 50, columnDefinition = "VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci")
    private String heDieuHanh;

    @Column(name = "Ram")
    private Integer ram;

    @Column(name = "Rom")
    private Integer rom;

    @Column(name = "Cpu", length = 100, columnDefinition = "VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci")
    private String cpu;

    @Column(name = "MauSac", length = 50, columnDefinition = "VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci")
    private String mauSac;

    @Column(name = "ManHinh", length = 50, columnDefinition = "VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci")
    private String manHinh;

    @Column(name = "SoSim")
    private Integer soSim;

    @Column(name = "Loa", length = 50, columnDefinition = "VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci")
    private String loa;

    @Column(name = "Pin")
    private Integer pin;

    @Column(name = "KichThuoc", precision = 3, scale = 1)
    private Double kichThuoc;

    @Column(name = "KhoiLuong", precision = 5, scale = 2)
    private Double khoiLuong;

    @Column(name = "ChatLieu", length = 50, columnDefinition = "VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci")
    private String chatLieu;

    @Column(name = "Gia")
    private Integer gia;

    @Column(name = "HINHANH", length = 255)
    private String hinhAnh;

    // Getter và Setter
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

    public Integer getRam() {
        return ram;
    }

    public void setRam(Integer ram) {
        this.ram = ram;
    }

    public Integer getRom() {
        return rom;
    }

    public void setRom(Integer rom) {
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

    public Integer getSoSim() {
        return soSim;
    }

    public void setSoSim(Integer soSim) {
        this.soSim = soSim;
    }

    public String getLoa() {
        return loa;
    }

    public void setLoa(String loa) {
        this.loa = loa;
    }

    public Integer getPin() {
        return pin;
    }

    public void setPin(Integer pin) {
        this.pin = pin;
    }

    public Double getKichThuoc() {
        return kichThuoc;
    }

    public void setKichThuoc(Double kichThuoc) {
        this.kichThuoc = kichThuoc;
    }

    public Double getKhoiLuong() {
        return khoiLuong;
    }

    public void setKhoiLuong(Double khoiLuong) {
        this.khoiLuong = khoiLuong;
    }

    public String getChatLieu() {
        return chatLieu;
    }

    public void setChatLieu(String chatLieu) {
        this.chatLieu = chatLieu;
    }

    public Integer getGia() {
        return gia;
    }

    public void setGia(Integer gia) {
        this.gia = gia;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }
}
