package com.booking;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
//import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
//import java.util.ArrayList;




public class bookingDButil {
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stm=null;
	
	private static ResultSet re=null;
	
	
	public static List <Customer> validate(String UserName, String PassWord){
		
		ArrayList<Customer> cus=new ArrayList<>();
		
		//creating database connection 
		String url="jdbc:mysql://localhost:3306/booking";
		String user="root";
		String pass="root123";
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,user,pass);
			Statement stm= con.createStatement();
			String sql="select * from bookingtable where username='"+UserName+"' and password='"+PassWord+"' ";
			ResultSet re=stm.executeQuery(sql);
			 
			if(re.next()) {
				int BkID=re.getInt(1);
				String Fname=re.getString(2);
				String Lname=re.getString(3);
				String Phoneno=re.getString(4);
				String NIC=re.getString(5);
				String address=re.getString(6);
				String roomNo=re.getString(7);
				String roomType=re.getString(8);
				String userName=re.getString(9);
				String password=re.getString(10);
				
				
				Customer c=new Customer(BkID,Fname,Lname,Phoneno,NIC,address,roomNo,roomType,userName,password);				
				
			    cus.add(c);
			
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		 return cus;
		
	}
		
	
	

	public static boolean insertBooking(String FirstName,String LastName,String phoneNo,String nic,String Address,String RoomNo,String RoomType,String UserNAME,String Password) {
		
		

		///creating a database connection
		
		String url="jdbc:mysql://localhost:3306/booking";
		String user="root";
		String pass="root123";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,user,pass);
			Statement stm= con.createStatement();	
			String sql="insert into bookingtable values( 0,'"+FirstName+"','"+LastName+"','"+phoneNo+"','"+nic+"','"+Address+"','"+RoomNo+"','"+RoomType+"','"+UserNAME+"','"+Password+"')";
		     int re=stm.executeUpdate(sql);
		     
		     if(re>0) {
		    	 isSuccess=true;
		    	 
		     }
		     else {
		    	 isSuccess=false;
		     }
		     
		     
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	} 
		
	
	public static boolean UpdateBooking(String ID,String fname,String lname,String phoneno,String nic,String address,String noofRoom,String RoomTYPE,String Usrname,String Password) {
		
	
		try {
			
		
			con=DBconnect.getConnection();
			stm=con.createStatement();
			
				
			String sql="update bookingtable set Fname='"+fname+"',Lname='"+lname+"',Phoneno='"+phoneno+"',NIC='"+nic+"',Address='"+address+"',roomNo='"+noofRoom+"',roomtype='"+RoomTYPE+"',username='"+Usrname+"',password='"+Password+"' "+" where BkID='"+ID+"'";
			int re=stm.executeUpdate(sql);
			
			if(re>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		return isSuccess;
	}
	
	
	
	
		

}
