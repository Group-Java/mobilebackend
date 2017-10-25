package com.mobilebackend.dbprovider;

import java.sql.Connection;

public class AdminConnection extends DataConnection{
	
	private final static String USERNAME = "admin";
	private final static String PASSWORD = "123123";
	
	public AdminConnection() {
		super();
	}
	
//	@Parameter: null
//	@Return: Connection
//	@Description: Tao ket noi cho tai khoan Admin
	public Connection createConnect() {
		return super.createConnect(USERNAME, PASSWORD);
	}
}
