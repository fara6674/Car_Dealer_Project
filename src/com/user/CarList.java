package com.user;

import java.util.ArrayList;

public class CarList {

	
	public ArrayList<Car> createCar(){
		ArrayList<Car> cars= new ArrayList();
		
		Car car1 = new Car("Nissan", "Altima", "2020", "111", "Red", 111111, "100000", ".\\images\\car1.jpg");
		Car car2 = new Car("Honda", "Accord", "2019", "222", "Red", 222222, "200000", ".\\images\\car2.jpg");
		Car car3 = new Car("Toyota", "Camry", "2018", "333", "Red", 333333, "300000", ".\\images\\car3.jpg");
		Car car4 = new Car("Mazda", "Protege", "2017", "444", "Red", 444444, "400000", ".\\images\\car4.jpg");
		Car car5 = new Car("GMC", "ZZ", "2016", "555", "Red", 555555, "500000", ".\\images\\car5.jpg");
		Car car6 = new Car("Tesla", "XX", "2015", "666", "Red", 666666, "600000", ".\\images\\car6.jpg");
		
		Car car7 = new Car("Nissan", "Altima", "2020", "111", "Black", 777777, "700000", ".\\images\\car7.jpg");
		Car car8 = new Car("Honda", "Accord", "2019", "222", "Black", 888888, "800000", ".\\images\\car8.jpg");
		Car car9 = new Car("Toyota", "Camry", "2018", "333", "Black", 999999, "900000", ".\\images\\car9.jpg");
		Car car10 = new Car("Mazda", "Protege", "2017", "444", "Black", 101010, "101000", ".\\images\\car10.jpg");
		Car car11 = new Car("GMC", "ZZ", "2016", "555", "Black", 121212, "102000", ".\\images\\car11.jpg");
		Car car12 = new Car("Tesla", "XX", "2015", "666", "Black", 131313, "103000", ".\\images\\car12.jpg");
		
		cars.add(car1);
		cars.add(car2);
		cars.add(car3);
		cars.add(car4);
		cars.add(car5);
		cars.add(car6);
		
		cars.add(car7);
		cars.add(car8);
		cars.add(car9);
		cars.add(car10);
		cars.add(car11);
		cars.add(car12);
		
		return cars;
		
	}
	
}
