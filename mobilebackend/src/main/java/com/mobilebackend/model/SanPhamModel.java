package com.mobilebackend.model;

import java.util.Date;

public class SanPhamModel {
	
	private int masp;
	private String tensp;
	private String kichthuocman;
	private String thongsoman;
	private String pin;
	private ThongSoCamera cameratruoc = new ThongSoCamera();
	private ThongSoCamera camerasau = new ThongSoCamera();
	private String kichthuoc;
	private String khoiluong;
	private Date thoidiemramat;
	private String chipset;
	private String tscpu;
	private String bonhoram;
	private KetNoiModel ketnoi = new KetNoiModel();
	private String hedieuhanh;
	private boolean baomatvantay;
	private boolean chongnuoc;
	private String dongsp;
	public int getMasp() {
		return masp;
	}
	public void setMasp(int masp) {
		this.masp = masp;
	}
	public String getTensp() {
		return tensp;
	}
	public void setTensp(String tensp) {
		this.tensp = tensp;
	}
	public String getKichthuocman() {
		return kichthuocman;
	}
	public void setKichthuocman(String kichthuocman) {
		this.kichthuocman = kichthuocman;
	}
	public String getThongsoman() {
		return thongsoman;
	}
	public void setThongsoman(String thongsoman) {
		this.thongsoman = thongsoman;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public ThongSoCamera getCameratruoc() {
		return cameratruoc;
	}
	public void setCameratruoc(ThongSoCamera cameratruoc) {
		this.cameratruoc = cameratruoc;
	}
	public ThongSoCamera getCamerasau() {
		return camerasau;
	}
	public void setCamerasau(ThongSoCamera camerasau) {
		this.camerasau = camerasau;
	}
	public String getKichthuoc() {
		return kichthuoc;
	}
	public void setKichthuoc(String kichthuoc) {
		this.kichthuoc = kichthuoc;
	}
	public String getKhoiluong() {
		return khoiluong;
	}
	public void setKhoiluong(String khoiluong) {
		this.khoiluong = khoiluong;
	}
	public Date getThoidiemramat() {
		return thoidiemramat;
	}
	public void setThoidiemramat(Date thoidiemramat) {
		this.thoidiemramat = thoidiemramat;
	}
	public String getChipset() {
		return chipset;
	}
	public void setChipset(String chipset) {
		this.chipset = chipset;
	}
	public String getTscpu() {
		return tscpu;
	}
	public void setTscpu(String tscpu) {
		this.tscpu = tscpu;
	}
	public String getBonhoram() {
		return bonhoram;
	}
	public void setBonhoram(String bonhoram) {
		this.bonhoram = bonhoram;
	}
	public KetNoiModel getKetnoi() {
		return ketnoi;
	}
	public void setKetnoi(KetNoiModel ketnoi) {
		this.ketnoi = ketnoi;
	}
	public String getHedieuhanh() {
		return hedieuhanh;
	}
	public void setHedieuhanh(String hedieuhanh) {
		this.hedieuhanh = hedieuhanh;
	}
	public boolean isBaomatvantay() {
		return baomatvantay;
	}
	public void setBaomatvantay(boolean baomatvantay) {
		this.baomatvantay = baomatvantay;
	}
	public boolean isChongnuoc() {
		return chongnuoc;
	}
	public void setChongnuoc(boolean chongnuoc) {
		this.chongnuoc = chongnuoc;
	}
	public String getDongsp() {
		return dongsp;
	}
	public void setDongsp(String dongsp) {
		this.dongsp = dongsp;
	}
	
	
}
