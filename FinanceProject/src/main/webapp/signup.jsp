<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="cssfiles/signupp.css" />
    <script src="javascriptfiles/signup.js"></script>
</head>
    <body>
      <div>
      <!--Header-->
  <div id="header-wrapper">
      <div id="header" class="container">
        <div id="logo">
      <h1 style="color:white;">EMI Finance</h1>
        </div>
        <div id="menu">
          <ul>
            <li><a href="index.html" accesskey="1" title="">Home</a></li>
            <li><a href="login.html" accesskey="2" title="">Login</a></li>
            <li  class="current_page_item"><a href="signup.html" accesskey="3" title="">Sign Up</a></li>
            <li><a href="productlist.html" accesskey="4" title="">Products</a></li>
          </ul>
        </div>
      </div>
    </div>

        <div class="outer">
          <h1>
            <center>Register</center>
          </h1>
      `		<form name="myForm"  action="register.lti" method="post" onsubmit="validate()">
    
            <div class="extra">
              <label><a style="margin-right: 188px;">First Name<i>*</i></a> <a>Last Name<i>*</i></a>
              </label><br> <input type="text" class="input" name="firstname" id="fname"
                placeholder="" autofocus="on" id="name" style="margin-right: 64px;">
              
              <input type="text" class="input" name="lastname" id="lname"
                placeholder="" >
              <div><a id="fname1" href="javascript:void()" onclick="document.getElementById('myform').namecheck();"></a><a id="lname1"></a></div>
            </div>
    
    
            <div class="extra">
              <label style="margin-right: 204px;">Email Id<i>*</i></label>
              <label>Mobile Number<i>*</i></label> <input type="email"
                class="input" name="email" id="email" placeholder="" required style="margin-right: 64px;">
              
              <input type="number" class="input" name="phoneno" id="phone"
                placeholder="" required><br>
            </div>
    
            <div class="extra">
              <label>Address<i>*</i></label><br>
              <textarea name="address" id="add" cols="66.5" rows="2" required></textarea>
            </div>
    
            <div class="extra">
              <label style="margin-right: 192px;">Username <i>*</i></label>
              <label>DOB <i>*</i></label>
               <input type="text" class="input" name="username" placeholder="" required style="margin-right: 64px;">
               <input type="date" class="input" name="DOB" placeholder="" required> 
            </div>
    
            <div class="extra">
              <label style="margin-right:198px;">Password<i>*</i></label>
              
              <label>Confirm Password<i>*</i></label> 
              <input type="password" class="input" name="password" id="pass" placeholder="" required style="margin-right: 64px;">
              
              <input type="password" class="input" name="cpassword" id="cpass"  placeholder="" required><br>
            </div>
    
    
    
            <div class="extra">
              <label>Select Card Type<i>*</i></label><label>
                <input type="radio" name="cardType" value="gold"> Gold <input
                type="radio" name="cardType" value="titanium">Titanium<br>
              </label>
            </div>
            <br>
    
    
    
            <div class="extra">
              <label style="margin-right:10px;">Select Bank Name<i>*</i></label> <select
                name="Bank" data-rule="required" data-default="3">
                <option value="0">--No select--</option>
                <option value="Citi Bank">Citi Bank</option>
                <option value="HDFC Bank">HDFC Bank</option>
                <option value="ICICI Bank">ICICI Bank</option>
                <option value="Axis Bank">Axis Bank</option>
              </select>
            </div>
            <br>
    
    
            <div class="extra">
              <label style="margin-right:162px;">Savings A/c No<i>*</i></label>
              <label>IFSC
                Code<i>*</i>
              </label> <input type="number" class="input" name="acno" placeholder=""
                required style="margin-right:63px;">
              
              <input type="text" class="input" name="ifsc" placeholder=""
                required><br>
            </div>
    
            <div class="extra">
              <label style="margin-right:4px;">Upload Aadhar Card<i>*</i></label> <input type="file"
                name="aadhar" />
            </div>
    
            <div class="extra">
              <label style="margin-right:24px;">Upload PAN Card<i>*</i></label> <input type="file"
                name="pan" />
            </div>
            <br>
            <div class="buttons">
              <button type="reset">Reset</button>
              <button type="submit" onclick="return validateForm()">Register</button>
            </div>
          
          </form>
        </div>
    
      
      </div>
    </body>
    </html>