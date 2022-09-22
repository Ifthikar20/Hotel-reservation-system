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
          <h2><strong>Edit booking page</strong> </h2>
          <p>

          </p>
          <div class="quote">
            <p>
              Your booking status:<strong>Editing  Data</strong>
            </p>
        </div>



      </div>

 <%
 
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
     
 %>




 <form action="update" method="post"> 
 <table>
 <tr>
   <td> BOOKING ID: </td>
   <td><input type="text" name="BkID" value="<%=ID %>" readonly><br></td>
 </tr>
 <tr>
   <td> FIRST NAME: </td>
   <td><input type="text" name="Fname" value="<%=fname %>"><br></td>
 </tr>

 <tr>
   <td>LAST NAME : </td>
   <td> <input type="text" name="Lname" value="<%=lname %>"><br></td>
 </tr>

 <tr>
   <td>  PHONE    :  </td>
   <td><input type="text" name="phone" value="<%=phoneno %>"><br></td>
 </tr>

 <tr>
   <td>    NIC     :  </td>
   <td><input type="text" name="nic" value="<%=nic %>"><br></td>
 </tr>

 <tr>
   <td>    ADDRESS  :  </td>
   <td> <input type="text" name="address" value="<%=address %>"><br></td>
 </tr>

 <tr>
   <td>    NO of Room:</td>
   <td><input type="text" name="roomNo" value="<%=noofRoom %>"><br></td>
 </tr>

 <tr>
   <td>    Type of room:</td>
   <td><select  name="roomType" placeholder="type of romm" type="text" value="<%=RoomTYPE %>">
                <option value="">Select rooms</option>
                <option value="Elite suite">Elite Suite</option>
                <option value="Dulux">Dulux Room</option>
                <option value="Double bed room">Double bed room</option>
                <option value="One Bed premium">One Bed Premium</option>
                <option value="One Bed(With decoration)">One Bed(With decoration)</option>
                <option value="One Bed basic">One Bed basic</option><br></td>
 </tr>
 
 
 
 
 
 <tr>
   <td>   Username   : </td>
   <td><input type="text" name="userN" value="<%=Usrname %>"><br></td>
 </tr>

 <tr>
   <td> Password  :</td>
   <td><input type="text" name="PassW" value="<%=Password %>"><br></td>
 </tr>
 <tr>
   
   <td> <input type="submit" name="update" value="UPDATE my data"></td>
 </tr>


 </table>
</form>

</body>
</html>






    
    <!--  
      
 
 -->




