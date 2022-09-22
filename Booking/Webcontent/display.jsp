
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
  <div class="container">
   
      <div class="book">
        <div class="description">
            <h1><strong> Nomad's Lobby</strong></h1>
          <h2><strong>This is your booking ticket </strong> </h2>
          <p>

          </p>
          <div class="quote">
            <p>
              Your booking status:<strong>Confirmed</strong>
            </p>
        </div>

      </div>
    
    
      
 <div class="form">
<table class="content-table">
   <c:forEach var="cus" items="${CusDetails}">
      
      <c:set var="BKID" value="${cus.bookingid}"/>
      <c:set var="FNAME" value="${cus.firname}"/>
      <c:set var="LNAME" value=" ${cus.lasname}"/>
      <c:set var="PNO" value="${cus.pno}"/>
      <c:set var="NIC" value="${cus.nic}"/>
      <c:set var="ADDRESS" value=" ${cus.address}"/>
      <c:set var="ROOMNO" value="${cus.roomno}"/>
       <c:set var="ROOMTYPE" value=" ${cus.roomtype} "/>
        <c:set var="USERNAME" value="${cus.userNAME}"/>
        <c:set var="PASSWORD" value="${cus.passworD}"/>
      
      
    <h2>Welcome  ${cus.lasname} </h2>
        <h3>Booking ID#<strong> ${cus.bookingid}</strong></h3>
        <tr>
    <tr><tr><tr>
     <td> Booking ID:</td>
      <td><h3> ${cus.bookingid}</h3></td>
   </tr>
   <tr>
     <td> First Name:</td>
      <td>  ${cus.firname} </td>
   </tr>
   <tr>
     <td> Last Name: </td>
      <td>  ${cus.lasname} </td>
   </tr>
     <tr>
     <td> Phone number: </td>
      <td> ${cus.pno} </td>
   </tr>
     <tr>
     <td> NIC Number: </td>
      <td> ${cus.nic} </td>
   </tr>
      <tr>
     <td> Address: </td>
      <td>  ${cus.address} </td>
   </tr>
   
   <tr>
     <td> No of rooms: </td>
      <td> ${cus.roomno} </td>
   </tr>
   <tr>
     <td> Entered Room type: </td>
      <td> ${cus.roomtype} </td>
   </tr>
   
   <tr>
     <td> User Name entered: </td>
      <td>${cus.userNAME} </td>
   </tr>
   
   <tr>
     <td> Entered password: </td>
      <td> ${cus.passworD} </td>
   </tr>
   
 
    
    </c:forEach>
 
   </table>
   
   <c:url value="UpdateBooking.jsp" var="bkupdate">
      <c:param name="BkID" value="${BKID}"/>
      <c:param name="Fname" value="${FNAME}"/>
      <c:param name="Lname" value="${LNAME}"/>
      <c:param name="phone" value="${PNO}"/>
      <c:param name="nic" value="${NIC}"/>
       <c:param name="address" value="${ADDRESS}"/>
       <c:param name="roomNo" value="${ROOMNO}"/>
       <c:param name="roomType" value="${ROOMTYPE}"/>
        <c:param name="userN" value="${USERNAME}"/>
        <c:param name="PassW" value="${PASSWORD}"/>
   </c:url>
   
   <a href="${bkupdate}">
     <input type="button" name="update" value="Update my data">
   </a>
   
   <a href="">
    <input type="button" name="delete" value="Delete Account"> 
    </a>
   
  </div>
</body>
</html>





