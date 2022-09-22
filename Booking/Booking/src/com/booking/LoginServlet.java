package com.booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("UID");
		String password=request.getParameter("PSW");
		try {
	List<Customer> CusDetails=	bookingDButil.validate(username, password);
	
	request.setAttribute("CusDetails",CusDetails);
		}catch(Exception e) {
			e.printStackTrace();
		}
	RequestDispatcher di=request.getRequestDispatcher("display.jsp");
	di.forward(request, response);
	}

}
