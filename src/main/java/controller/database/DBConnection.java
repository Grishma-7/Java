package controller.database;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String databaseName = "coursework";
    private static final String username = "root";
    private static final String password = "";
    private static final String jdbcURL = "jdbc:mysql://localhost:3306/" + databaseName;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(jdbcURL, username, password);
    }
}
