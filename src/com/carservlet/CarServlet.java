package com.carservlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Car;


@WebServlet("/CarServlet")
public class CarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CarServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
	//	String uname = request.getParameter(arg0)

	//	List<Customer> customers = new ArrayList<Customer>();
		List<Car> cars =(List<Car>) session.getAttribute("car");
		//List<Car> cars = new ArrayList<Car>();
		
		if(cars==null) {
			
			cars=createCar();
		}
		
		
	/*	Car car1 = new Car("Nissan", "Altima", "2020", "111", "Red", 111111, "1000", ".\\images\\car1.jpg");
		Car car2 = new Car("Honda", "Accord", "2019", "222", "Red", 222222, "2000", ".\\images\\car2.jpg");
		Car car3 = new Car("Toyota", "Camry", "2018", "333", "Red", 333333, "3000", ".\\images\\car3.jpg");
		Car car4 = new Car("Mazda", "Protege", "2017", "444", "Red", 444444, "4000", ".\\images\\car4.jpg");
		Car car5 = new Car("GMC", "ZZ", "2016", "555", "Red", 555555, "5000", ".\\images\\car5.jpg");
		Car car6 = new Car("Tesla", "XX", "2015", "666", "Red", 666666, "6000", ".\\images\\car6.jpg");
		
		cars.add(car1);
		cars.add(car2);
		cars.add(car3);
		cars.add(car4);
		cars.add(car5);
		cars.add(car6);*/
		
		session.setAttribute("car", cars);
		
		RequestDispatcher rs = request.getRequestDispatcher("inventory.jsp");
		rs.forward(request, response);
		
		} 
		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	public ArrayList<Car> createCar(){
		ArrayList<Car> cars= new ArrayList();
		
		Car car1 = new Car("Nissan", "Altima", "2020", "111", "Red", 111111, "1000", ".\\images\\car1.jpg");
		Car car2 = new Car("Honda", "Accord", "2019", "222", "Red", 222222, "2000", ".\\images\\car2.jpg");
		Car car3 = new Car("Toyota", "Camry", "2018", "333", "Red", 333333, "3000", ".\\images\\car3.jpg");
		Car car4 = new Car("Mazda", "Protege", "2017", "444", "Red", 444444, "4000", ".\\images\\car4.jpg");
		Car car5 = new Car("GMC", "ZZ", "2016", "555", "Red", 555555, "5000", ".\\images\\car5.jpg");
		Car car6 = new Car("Tesla", "XX", "2015", "666", "Red", 666666, "6000", ".\\images\\car6.jpg");
		
		cars.add(car1);
		cars.add(car2);
		cars.add(car3);
		cars.add(car4);
		cars.add(car5);
		cars.add(car6);
		
		return cars;
		
	}

}
