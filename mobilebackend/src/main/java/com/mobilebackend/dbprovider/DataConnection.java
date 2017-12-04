package com.mobilebackend.dbprovider;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataConnection {

	private Connection conn = null;
	private final static String JDBC_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private final static String JDBC_CONNECTION = "jdbc:sqlserver://localhost:1433;DatabaseName=thietbididong;integratedSecurity=true;";
	public Connection createConnect() {
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(JDBC_CONNECTION);
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
