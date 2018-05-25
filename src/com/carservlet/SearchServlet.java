package com.carservlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Car;
import com.user.CarList;


@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SearchServlet() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session =request.getSession(true);
		ArrayList<Car> cars  = new CarList().createCar();
		ArrayList<Car> carSearch  = new ArrayList<Car>();
		
		String maker2 = request.getParameter("make");
	//	Car maker=null;
		for(Car car: cars) {
			if(car.getMake().equals(maker2)||car.getModel().equals(maker2)||car.getColor().equals(maker2)||car.getYear().equals(maker2)){
				carSearch.add(car);
			  //break;
			}
		}
		
		
		session.setAttribute("maker", carSearch);
		request.getRequestDispatcher("searchCar.jsp").forward(request, response);
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
