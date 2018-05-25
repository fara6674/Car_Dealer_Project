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

/**
 * Servlet implementation class BidServlet
 */
@WebServlet("/BidServlet")
public class BidServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BidServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bidprice = Integer.parseInt(request.getParameter("bidprice"));
		int vinNumber = Integer.parseInt(request.getParameter("vinNumber"));
		int carPrice = 0;
		String bidStatus = "";


		
		
		HttpSession session =request.getSession(true);
		
	ArrayList<Car> BidOfferInventory  = (ArrayList<Car>)session.getAttribute("car");
		
		for (int i = 0; i < BidOfferInventory.size(); i++) {
			
			if (BidOfferInventory.get(i).getVinNumber() == vinNumber ) {
				carPrice = BidOfferInventory.get(i).getPrice();
				
				if(bidprice >= carPrice * 0.1) {
					
					bidStatus = "Your bid is Accepted";
					BidOfferInventory.get(i).setPrice(bidprice);
				
				} else {
					
					bidStatus = "Your bid is declined";

					
				}
			}
			
			
			
		}

		
		session.setAttribute("BidOfferInventory", BidOfferInventory);
		request.setAttribute("bidStatus", bidStatus);
		
		RequestDispatcher rc =  request.getRequestDispatcher("details.jsp");
				rc.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
