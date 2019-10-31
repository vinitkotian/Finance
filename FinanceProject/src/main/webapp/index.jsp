<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
	<h1 style="color:#39599F;font-size:2.4em;">EMI Finance</h1>
    </div>
    <div id="menu">
      <ul>
        <li class="current_page_item"><a href="#home" accesskey="1" title="">Home</a></li>
		<!--<li><a href="login.html" accesskey="2" title="">Login</a></li>-->
		<li>
				<div class="dropdown">
						<a href="#login.html" accesskey="2" title="" >Login</a>
						<div class="dropdown-content">
						  <a href="login.jsp">As user</a>
						  <a href="adminlogin.lti">As admin</a>
						</div>
					  </div>
		</li>
        <li><a href="signup.jsp" accesskey="3" title="">Sign Up</a></li>
		<li><a href="getProduct.lti" accesskey="4" title="">Products</a></li>
      </ul>
	</div>

  </div>
</div>


<div id="header-featured"> 
	<!--background image in css-->
</div>

<div id="wrapper">
   
   <div id="extra1" class="container">
		<div class="title">
			<h2 style="font-size: 39px;">Welcome to our website</h2>
		</div>
		<p><b>
	    <center>
			<div style="width: 77em;">
				<p style="font-size: 16px;">
				EMI Financial Services, a part of ABC Holdings & Investments
				Limited, is an Indian financial services company focused on lending, asset management, wealth management and insurance
				We provide benefits of buying products with no cost EMI. Headquartered in Pune, Maharashtra, the company has 294 consumer 
				branches and 497 rural locations with over 33,000+ distribution points.Originally incorporated as EMI Auto Finance Limited 
				on March 25, 1987, the non-bank singularly focused on providing two and three wheeler finance. After 11 years in the auto 
				finance market, EMI Auto Finance Ltd launched its initial public issue of equity share and was listed on the BSE and NSE.
				At the turn of the 20th century, the company started providing benefits of buying products with no cost EMI.
			</p>
			</div>
		</center>
		</b></p>
	
	</div>

<div id="page-wrapper">
	<div id="extra2" class="contain">
		<div class="title">
			<div style="float:left; padding-left: 32em;">
				<h2>Products</h2>
			</div>
			<div style="float:right;margin-top: 1.18em;">
				<button onclick="location.href='login.jsp'">Login</button>
			</div>

		</div>

	<div style="    padding-top: 2em;">

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
				<h2>Laptop</h2>
				<a href="getProduct.lti"><img src="images/Dell-Laptop.jpg"/></a>
				<!--<img src="images/miband.jpg" alt="" />-->
			</div>
		</div>

		<div class="tbox3">
			<div class="padding-bottom">
				<h2>MI tv</h2>
				<a href="getProduct.lti"><img src="images/Mi TV 4X-tv.jpg"/></a>
				<!--<img src="images/laptop1.jpg" alt="" />-->
			</div>
		</div>
	</div>
	</div>
	<marquee direction="right" style="font-size:2em;"><em>EMI starting at Rs.5,000 onwards.Terms and Conditions applied.Login to buy now.</em></marquee>
	
</div>

<div id="footer">
	<div class="container">
		<div class="fbox1">
		<span class="icon icon-map-marker"></span>
			<span style="font-size: 18px;">Corporate office : 4th Floor,Emi Financial <br />Services
			Corporate Office, Off Pune-Ahmednagar Road, Viman Nagar, Pune 411014</span>
		</div>
		<div class="fbox1">
			<span class="icon icon-phone"></span>
			<span style="font-size: 18px;">
				Telephone : +91 0869805060
			</span>
		</div>
		<div class="fbox1">
			<span class="icon icon-envelope"></span>
			<span style="font-size: 18px;">Email : wecare@emifinservices.</span>
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
