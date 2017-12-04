package com.admin.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Test {

	public static void main(String[] args) {
		Connection connection = null;
        try {
            String dbUrl = "jdbc:sqlserver://localhost:1433;databaseName=thietbididong;integratedSecurity=true;";
            connection = DriverManager.getConnection(dbUrl);
            if (connection != null) {
                Statement sm = connection.createStatement();
                String sql = "select * from ketnoi where maketnoi = 1";
                ResultSet rs = sm.executeQuery(sql);
                while(rs.next()){
                    System.out.println(rs.getString("wlan"));

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		 
	 }
}
