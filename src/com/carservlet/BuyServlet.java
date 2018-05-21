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


@WebServlet("/BuyServlet")
public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public BuyServlet() {
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session =request.getSession(true);
		ArrayList<Car> cars  = (ArrayList<Car>)session.getAttribute("car");
		
		int vinNumber = Integer.parseInt(request.getParameter("vinNumber"));
		Car carDetails=null;
		for(Car car: cars) {
			if(car.getVinNumber()==vinNumber){
				carDetails=car;
				
			}
		}
		
		
		session.setAttribute("cart", carDetails);
		request.getRequestDispatcher("cart.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
