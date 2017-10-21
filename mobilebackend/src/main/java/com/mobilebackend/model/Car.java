package com.mobilebackend.model;

public class Car {

	private String name;
	private String brand;
	private String date;
	private Double weight;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}
	
	@Override
	public String toString(){
		
		StringBuilder st = new StringBuilder();
		st.append("Name: ").append(this.getName()).append("\n")
		.append("Brand: ").append(this.getBrand()).append("\n")
		.append("Date: ").append(this.getDate()).append("\n")
		.append("Weight: ").append(this.getWeight());
		
		return st.toString();
	}
	
}
