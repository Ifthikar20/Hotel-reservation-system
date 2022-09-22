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
          <h2><strong>Confirmation</strong> </h2>
          <p>

          </p>
          <div class="quote">
            <p>
              Your booking status:
            </p>
          </div>

        </div>

      
         <div class="form">
          <form action="log" method="post">
            
            <div class="inpbox">
              <span class="flaticon-user"></span>
             User name: <input type="text" name="UID" placeholder="user name" required><br>
            </div>

       
            <div class="inpbox">
              <span class="flaticon-user"></span>
             Password: <input type="password" name="PSW" placeholder="password" required><br>
            </div>
                <input type="submit" name="submit" class="subt" value="login">
            <!--<button class="subt" type="submit" name="submit">Submit</button>-->
          <!--   <button class="rst" type="reset" name="reset">Reset</button> -->
          </form>
        

        </div>
      </div>
    </div>
  </body>
</html>
