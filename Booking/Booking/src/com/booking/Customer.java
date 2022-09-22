package com.booking;

public class Customer {

	private int bookingid;
	private String firname;
	private String lasname;
	private String pno;
	private String nic;
	private String address;
	private String roomno;
	private String roomtype;
	private String userNAME;
	private String passworD;
	
	
	public Customer(int bookingid, String firname, String lasname, String pno, String nic, String address, String roomno,
			String roomtype, String userNAME, String passworD) {
	
		this.bookingid = bookingid;
		this.firname = firname;
		this.lasname = lasname;
		this.pno = pno;
		this.nic = nic;
		this.address = address;
		this.roomno = roomno;
		this.roomtype = roomtype;
		this.userNAME = userNAME;
		this.passworD = passworD;
		

		
	}
	public int getBookingid() {
		return bookingid;
	}
	
	public String getFirname() {
		return firname;
	}

	public String getLasname() {
		return lasname;
	}
	
	public String getPno() {
		return pno;
	}

	public String getNic() {
		return nic;
	}
	
	public String getAddress() {
		return address;
	}
	
	public String getRoomno() {
		return roomno;
	}
	
	public String getRoomtype() {
		return roomtype;
	}
	
	public String getUserNAME() {
		return userNAME;
	}
	
	public String getPassworD() {
		return passworD;
	}
	
	
	//////////////////////////////////////////////////
	
	
	
}
