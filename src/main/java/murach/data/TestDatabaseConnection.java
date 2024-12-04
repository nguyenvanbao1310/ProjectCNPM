/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class TestDatabaseConnection {
    public static void main(String[] args) {
        try (Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/quanlydienthoai", "springstudent", "springstudent")) {
            System.out.println("Database connected!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
