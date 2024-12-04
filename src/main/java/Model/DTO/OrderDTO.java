/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DTO;

import Model.Entity.DonHang;

/**
 *
 * @author daoducdanh
 */
public class OrderDTO {
    private DonHang donHang;
    private String chiTietListJson;

    public OrderDTO() {
    }

    public OrderDTO(DonHang donHang, String chiTietListJson) {
        this.donHang = donHang;
        this.chiTietListJson = chiTietListJson;
    }

    public DonHang getDonHang() {
        return donHang;
    }

    public void setDonHang(DonHang donHang) {
        this.donHang = donHang;
    }

    public String getChiTietListJson() {
        return chiTietListJson;
    }

    public void setChiTietListJson(String chiTietListJson) {
        this.chiTietListJson = chiTietListJson;
    }
    
    
}
