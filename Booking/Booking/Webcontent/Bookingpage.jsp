<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Hotel Booking</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css" href="style.css" />
  </head>
  <body>
    <div class="container">
      <div class="book">
        <div class="description">
            <h1><strong>Welcome to Nomad's Lobby</strong></h1>
          <h2><strong>Book</strong> your hotel room</h2>
          <p>
            Make your booking at your convenience 
          </p>
          <div class="quote">
            <p>
              Booking made simple
            </p>
          </div>
          <ul>
            <li>Reliable service</li>
            <li>24/7 customer srvice</li>
            <li>Broader range of room selections</li>
            <li>Convenience and comfort is ensured</li>
          </ul>
        </div>
      
        <div class="form">
          <form action="insert" method="post">
            
            <div class="inpbox">
              <span class="flaticon-user"></span>
              <input type="text" name="Fname" placeholder="First Name">
            </div>
            <div class="inpbox">
              <span class="flaticon-user"></span>
              <input type="text" name="Lname" placeholder="Last Name">
            </div>
            <div class="inpbox">
              <span class="flaticon-user"></span>
              <input type="text" name="phone" placeholder="Phone number">
            </div>
             <div class="inpbox">
              <span class="flaticon-user"></span>
              <input type="text" name="NIC" placeholder="Nic">
            </div>
            <div class="inpbox">
              <span class="flaticon-user"></span>
              <input type="text" name="address" placeholder="Address Name">
            </div>
            
            <div class="inpbox">
              <span class="flaticon-user"></span>
              <input type="text" name="roomNO" placeholder="No of rooms">
            </div>
              <div class="inpbox">
              <span class="flaticon-user"></span>
           <!-- <input type="text" name="roomType" placeholder="Type of room">-->
               <select  name="roomType" placeholder="type of romm">
                <option value="">Select rooms</option>
                <option value="Elite suite">Elite Suite</option>
                <option value="Dulux">Dulux Room</option>
                <option value="Double bed room">Double bed room</option>
                <option value="One Bed premium">One Bed Premium</option>
                <option value="One Bed(With decoration)">One Bed(With decoration)</option>
                <option value="One Bed basic">One Bed basic</option>
                
                
              </select>
            </div>
             <div class="inpbox">
              <span class="flaticon-user"></span>
              <input type="text" name="userName" placeholder="username">
            </div>
             <div class="inpbox">
              <span class="flaticon-user"></span>
              <input type="text" name="password" placeholder="password">
            </div>
            <!-- <div class="button">
                <input type="submit" name="submit" class="subt" value="submitbtn">
               </div> -->
          <button class="subt" type="submit" name="submit">Submit</button>
          <!--   <button class="rst" type="reset" name="reset">Reset</button> -->
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
