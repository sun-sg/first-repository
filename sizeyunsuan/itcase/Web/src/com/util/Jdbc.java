package com.util;

import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.Properties;

public class Jdbc {
    private static String url="jdbc:mysql://localhost:3306/arithmetic?characterEncoding=UTF-8&serverTimezone=UTC";
    private static String user="root";
    private static String password="sg15573755526";
    private static String driver="com.mysql.jdbc.Driver";



    /**
     * 获取连接
     * @return 连接对象
     */
    public static Connection getCon() throws SQLException, ClassNotFoundException {
        Class.forName(driver);
        System.out.println("测试加载数据成功");
        Connection con=DriverManager.getConnection(url, user, password);
        System.out.println("测试数据库连接成功");
        return con;
    }

    /**
     * 释放资源
     * @param con
     * @param ps
     * @param rs
     */
    public static void close( Connection con,PreparedStatement ps,ResultSet rs) {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
