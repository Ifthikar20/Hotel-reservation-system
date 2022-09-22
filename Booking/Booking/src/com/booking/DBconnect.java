package com.booking;

import java.sql.Connection;
import java.sql.DriverManager;

///this file connects to the database///////
/////CAN USE FOR ALL FILES///////a
public class DBconnect{
private static String url="jdbc:mysql://localhost:3306/booking";
private static String user="root";
private static String pass="root123";
private static Connection con;


public static Connection getConnection()
{

	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		con =DriverManager.getConnection(url, user,pass);
		
		
	}catch(Exception e) {
		
		System.out.println("Unsuccesful connection");	
		
	
	}
	return con;
	
	
	}



	
}
