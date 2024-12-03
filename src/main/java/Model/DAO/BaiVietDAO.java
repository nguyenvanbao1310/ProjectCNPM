/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DAO;

import DBConnection.DBConnection;
import Model.Entity.BaiViet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class BaiVietDAO {
    public static BaiViet getBaiVietByTieuDe(String tieuDeInput) {
        String query = "SELECT tieuDe, moDau, noiDung, ketLuan, hinhAnh1, hinhAnh2, ngayTao FROM baiViet WHERE tieuDe = ?";
        BaiViet bv = null;

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setString(1, tieuDeInput); 
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                String tieuDe = rs.getString("tieuDe");
                String moDau = rs.getString("moDau");
                String noiDung = rs.getString("noiDung");
                String ketLuan = rs.getString("ketLuan");
                String hinhAnh1 = rs.getString("hinhAnh1");
                String hinhAnh2 = rs.getString("hinhAnh2");
                Date ngayTao = rs.getTimestamp("ngayTao");

                bv = new BaiViet(tieuDe, moDau, noiDung, ketLuan, hinhAnh1, hinhAnh2, ngayTao);
                System.out.print(bv);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return bv;
    }

    // Lấy danh sách 3 bài viết
    public static List<BaiViet> danhSachBaiViet() {
        String query = "SELECT tieuDe, moDau, noiDung, ketLuan, hinhAnh1, hinhAnh2, ngayTao FROM baiViet LIMIT 3"; 
        List<BaiViet> baiVietList = new ArrayList<>();

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String tieuDe = rs.getString("tieuDe");
                String moDau = rs.getString("moDau");
                String noiDung = rs.getString("noiDung");
                String ketLuan = rs.getString("ketLuan");
                String hinhAnh1 = rs.getString("hinhAnh1");
                String hinhAnh2 = rs.getString("hinhAnh2");
                Date ngayTao = rs.getTimestamp("ngayTao");

                BaiViet bv = new BaiViet(tieuDe, moDau, noiDung, ketLuan, hinhAnh1, hinhAnh2, ngayTao);
                baiVietList.add(bv); 
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return baiVietList; 
    }
}
