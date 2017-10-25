package com.mobilebackend.dbprovider;

import java.sql.Connection;

public class KhachHangConnection extends DataConnection{

	private final static String USERNAME = "khachhang";
	private final static String PASSWORD = "123123";
	
	public KhachHangConnection() {
		super();
	}
	
//	@Parameter: null
//	@Return: Connection
//	@Description: Tao ket noi cho tai khoan Khach hang
	public Connection createConnect() {
		return super.createConnect(USERNAME, PASSWORD);
	}
}
