package com.user;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

public class Car {

	protected String make, model, year, mileage, color, image;
	int vinNumber, price;
	private Date recDate;

	/*private String model;
	private String year;
	private String mileage;
	private String color;
	private String vinNumber;
	private String price;*/

	Boolean String;

	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");


	// Created a method to calculate how many days cars have been setting in Inventory
	public boolean getcarAge() {
		// Minus the Max days the car Can sit Idle in Inventory
		LocalDateTime cutOffDate = LocalDateTime.now().minusDays(120);
		// Converting the dateRec date to a LocalDateTime so both date types are
		// the same.
		LocalDateTime convertedDateRec = LocalDateTime.ofInstant(recDate.toInstant(), ZoneId.systemDefault());

		/*
		 * 1.Checking to see if the cutoff date is after the dateRec date. 
		 * 2.Returning to see if the cutOffDate is after the convertedDate is with
		 * the cuttOffDate limit. 
		 * 3.If the car is not after the carInventory dateRec then the car is over the 120 day limit.
		 */
		return cutOffDate.isAfter(convertedDateRec);

	}
	
	
	public void setDateRec(String dateRec) {

		try {
			this.recDate = sdf.parse(dateRec);
		}

		catch (ParseException e) {
			e.printStackTrace();

		}

	}


	public Car(String make, String model, String year, String mileage, String color, int vinNumber, int price, String image) {
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

	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}


}
