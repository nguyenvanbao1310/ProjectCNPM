/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DTO;

import Model.Entity.DanhGia;
import Model.Entity.DienThoai;

/**
 *
 * @author daoducdanh
 */
public class ProductWithReview {
    private DienThoai dienThoai;
    private DanhGia danhGia;

    public ProductWithReview() {
    }

    public ProductWithReview(DienThoai dienThoai, DanhGia danhGia) {
        this.dienThoai = dienThoai;
        this.danhGia = danhGia;
    }

    public DienThoai getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(DienThoai dienThoai) {
        this.dienThoai = dienThoai;
    }

    public DanhGia getDanhGia() {
        return danhGia;
    }

    public void setDanhGia(DanhGia danhGia) {
        this.danhGia = danhGia;
    }
    
    
}
