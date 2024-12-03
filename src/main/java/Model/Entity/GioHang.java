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
@Table(name = "GioHang")
public class GioHang 
{
    
    @Id
    @Column(name = "IdGioHang")
    private String idGioHang;
    
    @OneToOne
    @JoinColumn(name = "IdKH", referencedColumnName = "Id")
    private KhachHang khachHang;
    

    @OneToMany(mappedBy = "gioHang")
    private List<Item> items;

    public GioHang() {
    }

    public GioHang(String idGioHang,KhachHang khachHang) 
    {
        this.idGioHang= idGioHang;
        this.khachHang = khachHang;
    }
    
    public String getIdGioHang()
    {
        return idGioHang;
    }
    
    public void setIdGioHang(String idGioHang)
    {
        this.idGioHang= idGioHang;
    }

    public KhachHang  getKhachHang() {
        return khachHang;
    }

    public void setKhachHang(KhachHang khachHang) {
        this.khachHang = khachHang;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
}
