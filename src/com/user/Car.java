package com.user;

public class Car {
	
	protected String make, model, year, mileage, color, price, image;
	int vinNumber;
	/*private String model;
	private String year;
	private String mileage;
	private String color;
	private String vinNumber;
	private String price;*/
	
	Boolean String;
	
	public int getVinNumber() {
		return vinNumber;
	}
	public void setVinNumber(int vinNumber) {
		this.vinNumber = vinNumber;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getMake() {
		return make;
	}
	public Car(String make, String model, String year, String mileage, String color, int vinNumber, String price, String image) {
		super();
		this.make = make;
		this.model = model;
		this.year = year;
		this.mileage = mileage;
		this.color = color;
		this.vinNumber = vinNumber;
		this.price = price;
		this.image = image;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMileage() {
		return mileage;
	}
	public void setMileage(String mileage) {
		this.mileage = mileage;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	

}
