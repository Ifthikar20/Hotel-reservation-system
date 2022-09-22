package com.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Bookinginfo")
public class Bookinginfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String FirstName = request.getParameter("Fname");
		String LastName = request.getParameter("Lname");
		String phoneNo = request.getParameter("phone");
		String nic = request.getParameter("NIC");
		String Address = request.getParameter("address");
		String RoomNo = request.getParameter("roomNO");
		String RoomType = request.getParameter("roomType");
		String UserNAME = request.getParameter("userName");
		String Password = request.getParameter("password");
		
		
		boolean isTrue;
		
		isTrue=bookingDButil.insertBooking(FirstName, LastName, phoneNo, nic, Address,RoomNo,RoomType,UserNAME,Password);
		
		if(isTrue== true) {
			RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
		
		     dis.forward(request, response);
		}else {
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	}

}
