<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/login.css">
    <title>Document</title>
</head>
<body>
    <div class="wrapper fadeInDown">
        <div id="formContent">
          <!-- Tabs Titles -->
          <h2 class="active"> Forgot password? </h2>
          
      
          <br><br>
      
          <!-- Icon 
          <div class="fadeIn first">
            <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
          </div>-->
      
          <!-- Login Form -->
          <form>
            <input type="number" id="otp" class="fadeIn second" name="otp" placeholder="Enter OTP" required><br><br>
            <input type="submit" onclick="location.href='forgot2.jsp'" class="fadeIn fourth" value="Resend OTP">
            <input type="submit" onclick="location.href='forgot3.jsp'" class="fadeIn fourth" value="Submit">
          </form>
      
        </div>
      </div>
</body>
</html>