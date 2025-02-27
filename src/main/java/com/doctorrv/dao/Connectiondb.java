
package com.doctorrv.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connectiondb {
    private static final String URL = "jdbc:mysql://localhost:3306/doctorrv";
    private static final String USER = "root";
    private static final String PASSWORD = "admin";
    
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        // Chargement du driver JDBC
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // Établissement de la connexion
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }


public static void main(String[] args) {
    try (Connection conn = getConnection()) {
        if (conn != null) {
            System.out.println("✅ Connection successful!");
        } else {
            System.out.println("❌ Connection failed!");
        }
    } catch (SQLException | ClassNotFoundException e) {
        System.out.println("❌ Error: " + e.getMessage());
    }
}
}
