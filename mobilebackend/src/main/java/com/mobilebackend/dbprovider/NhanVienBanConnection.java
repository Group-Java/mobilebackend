package com.mobilebackend.dbprovider;

import java.sql.Connection;

public class NhanVienBanConnection extends DataConnection{

	private final static String USERNAME = "nhanvienban";
	private final static String PASSWORD = "123123";
	
	public NhanVienBanConnection() {
		super();
	}
	
//	@Parameter: null
//	@Return: Connection
//	@Description: Tao ket noi cho tai khoan Nhan vien ban hang
	public Connection createConnect() {
		return super.createConnect(USERNAME, PASSWORD);
	}
}
