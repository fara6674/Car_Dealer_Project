package com.carservlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Car;


@WebServlet("/PlaceOrderServler")
public class PlaceOrderServler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PlaceOrderServler() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session =request.getSession(true);
		ArrayList<Car> cars  = (ArrayList<Car>)session.getAttribute("car");
		
		ArrayList<Car> admin  = (ArrayList<Car>)session.getAttribute("admin");
	
		
		if(admin == null) {
			
			admin= new ArrayList<Car>();
		}
		
		int vinNumber = Integer.parseInt(request.getParameter("vinNumber"));
		Car carDetails=null;
		for(Car car: cars) {  //for (int i = 0; i < carArrayList.size(); i++)
			if(car.getVinNumber()==vinNumber){
				
				//carDetails=car;
				//cars.setStatus(false);
				
			admin.add(car);
			cars.remove(car);
				break;
			}
		}
		
		
		session.setAttribute("admin", admin);
		session.setAttribute("cart", carDetails);
		session.setAttribute("car", cars);
		
		RequestDispatcher rs = request.getRequestDispatcher("Summary.jsp");
		rs.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
