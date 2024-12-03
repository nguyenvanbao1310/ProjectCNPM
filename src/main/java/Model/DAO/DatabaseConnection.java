package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/quanlyshopdienthoai"; // Thay bằng URL của bạn
    private static final String USER = "root"; // Thay bằng tên người dùng của bạn
    private static final String PASSWORD = "123456"; // Thay bằng mật khẩu của bạn

    private static Connection connection;
    public static Connection getConnection() throws SQLException {
        if (connection == null || connection.isClosed()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
                System.out.println("Database connected successfully!");
            } catch (ClassNotFoundException e) {
                System.err.println("MySQL Driver not found!");
                e.printStackTrace();
                throw new SQLException("Driver not found", e);
            }
        }
        return connection;
    }

    public static void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Database connection closed.");
            } catch (SQLException e) {
                System.err.println("Error closing database connection.");
                e.printStackTrace();
            }
        }
    }
}
