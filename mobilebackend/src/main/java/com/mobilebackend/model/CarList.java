package com.mobilebackend.model;

import java.util.List;

public class CarList {

	private List<Car> danhsachxe;
	private int soLuongXe;

	public List<Car> getDanhsachxe() {
		return danhsachxe;
	}

	public void setDanhsachxe(List<Car> danhsachxe) {
		this.danhsachxe = danhsachxe;
	}

	public int getSoLuongXe() {
		return soLuongXe;
	}

	public void setSoLuongXe(int soLuongXe) {
		this.soLuongXe = soLuongXe;
	}
}
