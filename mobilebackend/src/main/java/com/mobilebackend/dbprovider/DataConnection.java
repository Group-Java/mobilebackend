package com.mobilebackend.dbprovider;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataConnection {

	private Connection conn = null;
	private final static String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final static String JDBC_CONNECTION = "jdbc:mysql://localhost:3306/thietbididong";
	
	public Connection createConnect(String User, String Pass) {
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(JDBC_CONNECTION, User, Pass);
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		
		return conn;
	}
	
	public void disConnect() throws SQLException {
		if(!conn.isClosed() || conn != null) {
			conn.isClosed();
		}
	}
}
