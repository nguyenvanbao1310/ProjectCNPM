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
@Table(name = "Item")
public class Item {
    
    @EmbeddedId
    private ItemId id;
    

    @ManyToOne
    @MapsId("idGioHang")
    @JoinColumn(name = "IdGioHang")
    private GioHang gioHang; 

    @ManyToOne
    @MapsId("idSP")
    @JoinColumn(name = "IdSP", referencedColumnName = "Id")
    private DienThoai dienThoai; 

    @Column(name = "SoLuong")
    private int soLuong; 

    public Item() {
    }

    public Item(ItemId id, GioHang gioHang, DienThoai dienThoai, int soLuong) {
        this.id = id;
        this.gioHang = gioHang;
        this.dienThoai = dienThoai;
        this.soLuong = soLuong;
    }
    
    public Item (ItemId id, int soLuong)
    {
        this.id = id;
        this.soLuong = soLuong;
    }
    
    public ItemId getId() {
        return id;
    }

    public void setId(ItemId id) {
        this.id = id;
    }

    public GioHang getGioHang() {
        return gioHang;
    }

    public void setGioHang(GioHang gioHang) {
        this.gioHang = gioHang;
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
