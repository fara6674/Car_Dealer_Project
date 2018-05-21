package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDAO;




@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginServlet() {
        super();
        
              
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("uName");
		String password = request.getParameter("pass");
		
		LoginDAO dao = new LoginDAO();
		if(dao.check(userName, password)) {
		//if(userName!=null && userName.equals("admin") && password!=null && password.equals("admin"))	{
			System.out.println("Entered Correctly");
			HttpSession session = request.getSession();
			session.setAttribute("UserName", userName);
			request.getRequestDispatcher("admin.jsp").forward(request, response);
		}
		else {
			System.out.println("Entered Incorrectly");
			
			PrintWriter out = response.getWriter();
		
			response.getWriter().append("User Name and/or Password was entered incorrectly, Please try to enter again");
		
		}

		
	}

	
}

	
/*	public LoginServlet() {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	CustomerDAO cd = new CustomerDAO();
	String userName = request.getParameter("username");
	String password = request.getParameter("password1");
	String submitType = request.getParameter("submit");
	Customer c = cd.getCustomer(userName, password);

	if (submitType.equals("login") && c != null && c.getName() != null) {
		request.setAttribute("message", c.getName());
		request.getRequestDispatcher("welcome.jsp").forward(request, response);
	} else if (submitType.equals("register")) {
		c.setName(request.getParameter("name"));
		c.setPassword(password);
		c.setUsername(userName);
		cd.insertCustomer(c);
		request.setAttribute("successMessage", "Registration done , please login to continue !!!");
		request.getRequestDispatcher("login.jsp").forward(request, response);

	} else {
		request.setAttribute("message", "Data Not Found , click on Register !!!");
		request.getRequestDispatcher("login.jsp").forward(request, response);

	}*/

