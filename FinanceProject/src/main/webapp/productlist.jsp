<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="cssfiles\productlist.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

    <title>Product List</title>
</head>  
<body  >

  <!--Header-->
  <div id="header-wrapper">
    <div id="header" class="container">
      <div id="logo">
    <h1 style="color:white;">EMI Finance</h1>
      </div>
      <div id="menu">
        <ul>
          <li class="current_page_item"><a href="index.html" accesskey="1" title="">Home</a></li>
          <li><a href="login.jsp" accesskey="2" title="">Login</a></li>
          <li><a href="signup.jsp" accesskey="3" title="">Sign Up</a></li>
          <li><a href="productlist.jsp" accesskey="4" title="">Products</a></li>
        </ul>
      </div>
    </div>
  </div>

<div style="background-color:aliceblue">

      <!-- <div class="navigation">
            Hii Username 
            <button type="submit" style="width:90px; height: 40px;">Logout</button>
        </div>-->
       
        
         <div class="product">  
            <img src="images/iphone.jpg" id="iphone" style="width:15em; height:15em;" ><br><br><br><br><br><br><br><br><br>
            <img src="images/miband.jpg" id="miband" style="width:15em; height:15em;" ><br><br><br><br><br><br><br><br><br><br><br><br>
           <img src="images/laptop1.jpg" id="laptop" style="width:13em; height:10em;" ><br><br><br><br><br><br><br><br>        
        </div>


         <div class="singlepro">
            </br></br></br>
            <p class="details"><b> iPhone Xs (64GB) - Black</b></p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
            <ul>
              <li>5.8-inch Super Retina display (OLED) with HDR1</li>
              <li>IP68 dust and water resistant (maximum depth of 2 metres up to 30 minutes)2</li>
              <li>12MP dual cameras with dual OIS and 7MP TrueDepth front camera — Portrait mode, Portrait Lighting, Depth Control and Smart HDR</li>
              <li>Face ID for secure authentication3</li>
              <li>Wireless charging—works with Qi chargers</li>
              <li>iOS 12 with Memoji, Screen Time, Siri Shortcuts, and Group FaceTime</li>
            </ul>
            <p class="price">Rs. 60,000</p>
           
            <p><button type="submit"  onclick="location.href='product-inst-phone.html'">Buy now</button></p>
            <hr>
            <br>


         <p class="details"><b>Mi Band 3 - Navy Blue</b></p>
         <span class="fa fa-star checked"></span>
         <span class="fa fa-star checked"></span>
         <span class="fa fa-star checked"></span>
         <span class="fa fa-star "></span>
         <span class="fa fa-star"></span>
         <ul>
           <li>Up to 20 days of battery life (If Automatic Heart Rate feature is turned on then expected battery life will be 3-9 days)</li>
           <li>Use Mi-Fit App to connect the phone</li>
           <li>0.78” OLED touch screen. The adjustable strap length is 155 - 216mm</li>
           <li>Call and Notification Alert: Read messages and receive call notification and alerts from applications such as Uber, WhatsApp etc</li>
           <li>Continuous Heart rate monitoring, sleep analysis and advanced step tracking</li>
           <li>Find my phone feature: Ring your phone, if it is misplaced</li>
           <li>5ATM - Water resistant upto 50 metres</li>
         </ul>
         <p class="price">Rs.  2000</p>
         <p><button type="submit" onclick="location.href='product-inst-mi.html'">Buy now</button></p>
        <hr>
        <br>

         <p class="details"><b>HP 15 Intel Core i5 Full HD Laptop (15.6-inch, Sparkling Black)</b></p>
         <span class="fa fa-star checked"></span>
         <span class="fa fa-star checked"></span>
         <span class="fa fa-star checked"></span>
         <span class="fa fa-star checked"></span>
         <span class="fa fa-star"></span>
         <ul>
           <li>7th Gen Intel i5-7200U (2.5 GHz base processor speed, 3 MB SmartCache, 2 cores), Max Boost Clock Up to 3.1 GHz</li>
           <li>Windows 10 Home with lifetime validity</li>
           <li>Screen Size	15.6 Inches</li>
           <li>Microsoft Office Home & Student 2016 Lifetime edition</li>
           <li>8GB DDR4-2400 RAM</li>
           <li>Expandable to 16 GB, 1TB 5400 RPM HDD</li>
         </ul>
         <p class="price">Rs.  45,000</p>
         <p><button type="submit" onclick="location.href='product-inst-hp.html'">Buy now</button></p>
          </div>
         
      
  </div>
    
</body>
</html>