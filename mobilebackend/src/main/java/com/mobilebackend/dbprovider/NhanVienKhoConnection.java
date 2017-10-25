package com.mobilebackend.dbprovider;

import java.sql.Connection;

public class NhanVienKhoConnection extends DataConnection{


	private final static String USERNAME = "nhanvienkho";
	private final static String PASSWORD = "123123";
	
	public NhanVienKhoConnection() {
		super();
	}
	
	
//	@Parameter: null
//	@Return: Connection
//	@Description: Tao ket noi cho tai khoan Nhan vien kho bai
	public Connection createConnect() {
		return super.createConnect(USERNAME, PASSWORD);
	}
	
	
//	public static void main(String args[]) throws SQLException {
//		AdminConnection conn = new AdminConnection();
//		ResultSet rs = conn.createConnect().createStatement().executeQuery("select * from sanpham");
//		rs.next();
//		System.out.println(rs.getString("tensp"));
//	}
}
