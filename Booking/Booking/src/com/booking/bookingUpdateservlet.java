package com.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bookingUpdateservlet")
public class bookingUpdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID=request.getParameter("BkID");
		String fname=request.getParameter("Fname");	
		String lname=request.getParameter("Lname");	
		String phoneno=request.getParameter("phone");	
		String nic=request.getParameter("nic");	
		String address=request.getParameter("address");
		String noofRoom=request.getParameter("roomNo");
		String RoomTYPE=request.getParameter("roomType");
		String Usrname=request.getParameter("userN");
		String Password=request.getParameter("PassW");
		
		
		boolean isTrue;
		isTrue=bookingDButil.UpdateBooking(ID, fname, lname, phoneno, nic, address, noofRoom, RoomTYPE, Usrname, Password);
			
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("success.jsp");		
			 dis.forward(request,response);
		
		}else {
			RequestDispatcher dis=request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		
	       
		
		
	}

}
