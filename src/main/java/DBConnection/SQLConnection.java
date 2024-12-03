package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLConnection {
    public static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String dbURL = "localhost"; 
        String dbName = "root";  
        String dbUserName = "";     
        String dbPassword = ""; 
        String connectionURL = "jdbc:mysql://" + dbURL + ":20297/" + dbName + "?useSSL=false&serverTimezone=UTC";

        try {
            Class.forName(dbDriver); // Nạp driver
            Connection conn = DriverManager.getConnection(connectionURL, "", "");
            System.out.println("Kết nối MySQL thành công.");
            return conn;
        } catch (SQLException e) {
            System.err.println("Lỗi kết nối cơ sở dữ liệu: " + e.getMessage());
            throw e; // Quăng lỗi ra ngoài để xử lý
        }
    }
}
