<%@page import="com.lti.finance.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
<link href="cssfiles/indexx.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>


<div id="header-wrapper" >
  <div id="header" class="container">
    <div id="logo">
	<h1 style="color:#39599F">EMI Finance</h1>
    </div>

    <div id="menu">
      <ul>
       <li ><a style="font-size:1.5em;        margin-left: -317px;">Hello ${user.firstName} ${user.lastName} !!</a></li>
        <li class="current_page_item"><a href="indexlogin.jsp" accesskey="1" title="">Home</a></li>
		<!--<li><a href="login.html" accesskey="2" title="">Login</a></li>-->
		<!-- <li>
				 <div class="dropdown">
						<a href="login.html" accesskey="2" title="" >Login</a>
						<div class="dropdown-content">
						  <a href="login.html">As user</a>
						  <a href="login.html">As admin</a>
						</div>
					  </div>
		</li>
        <li><a href="signup.html" accesskey="3" title="">Sign Up</a></li>-->
		<li><a href="getProduct.lti" accesskey="4" title="">Products</a></li>
		<li><a href="dashboard.lti" accesskey="4"  name="userId" value="${user.userId}">Dashboard</a></li>
		<li><a href="logout.lti" accesskey="4" title="">Logout</a></li>
		<!--  <p style="font-size:1.5em;  ">Hello ${user.firstName} ${user.lastName} !!</p> -->
      
	</div>
	
  </div>

</div>


<div id="header-featured"> 
	<!--background image in css-->
</div>

<div id="wrapper">
   
   <div id="extra1" class="container">
		<div class="title">
			<h2>Welcome to our website</h2>
		</div>
		<p><b>
	    <center>
				EMI Financial Services, a part of ABC Holdings & Investments
				Limited, is an Indian financial services company focused on lending, asset management, wealth management and insurance
				We provide benefits of buying products with no cost EMI.
		</center>
		</b></p>
	
	</div>

<div id="page-wrapper">
	<div id="extra2" class="contain">
		<div class="title">
			<h2>Products</h2>
		</div>

		<div class="tbox1">
			<div class="padding-bottom">
				<h2>IPhone Xs</h2>
				<a href="getProduct.lti"><img src="images/iphone.jpg"/></a>
				<!--<button onClick="return productList()"><img src="images/iphone.jpg" /></button>-->
				<!--<img src="images/iphone.jpg" alt="" onclick="return productList()"/>-->
			</div>
		</div>

		<div class="tbox2">
			<div class="padding-bottom">
				<h2>Mi tv</h2>
				<a href="getProduct.lti"><img src="images/Mi TV 4X-tv.jpg"/></a>
				<!--<img src="images/miband.jpg" alt="" />-->
			</div>
		</div>

		<div class="tbox3">
			<div class="padding-bottom">
				<h2>HP Laptop</h2>
				<a href="getProduct.lti"><img src="images/Dell-Laptop.jpg"/></a>
				<!--<img src="images/laptop1.jpg" alt="" />-->
			</div>
		</div>
	</div>
	<marquee direction="right" style="font-size:2em;"><em>EMI starting at Rs.5,000 onwards.Terms and Conditions applied.</em></marquee>
</div>

<div id="footer">
	<div class="container">
		<div class="fbox1">
		<span class="icon icon-map-marker"></span>
			<span>Corporate office : 4th Floor,Emi Financial Services
			<br />Corporate Office, Off Pune-Ahmednagar Road, Viman Nagar, Pune – 411014</span>
		</div>
		<div class="fbox1">
			<span class="icon icon-phone"></span>
			<span>
				Telephone : +91 0869805060
			</span>
		</div>
		<div class="fbox1">
			<span class="icon icon-envelope"></span>
			<span>Email : wecare@emifinservices.</span>
		</div>
	</div>
</div>


<div id="copyright">
	<p>&copy;  EMI Financial Services Limited. | Designed and Handcrafted by GET 786 </p>
	<ul class="contact">
		<li><a href="www.twitter.com/" class="icon icon-twitter"><span>Twitter</span></a></li>
		<li><a href="www.facebook.com/" class="icon icon-facebook"><span></span></a></li>
		<li><a href="www.pininterest.com" class="icon icon-dribbble"><span>Pinterest</span></a></li>
		<li><a href="www.google.com" class="icon icon-tumblr"><span>Google+</span></a></li>
		<li><a href="www.linkedn.com" class="icon icon-rss"><span>Pinterest</span></a></li>
	</ul>
</div>

</body>
</html>
