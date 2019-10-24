<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@page import="com.lti.finance.entity.Product" %>
    <%@page import="java.util.List" %>
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
          <li class="current_page_item"><a href="indexlogin.jsp" accesskey="1" title="">Home</a></li>
 
          <li><a href="dashboard.lti" accesskey="4" title="">Dashboard</a></li>
		<li><a href="index.jsp" accesskey="4" title="">Logout</a></li>
        </ul>
      </div>
    </div> <!--  onclick="location.href='buyProduct.lti'" -->
  </div>

<div style="background-color:aliceblue">

      <!-- <div class="navigation">
            Hii Username 
            <button type="submit" style="width:90px; height: 40px;">Logout</button>
        </div>-->
       <form action="buyProduct.lti" method="get">
        <c:forEach var="products" items="${products}">
         <div class="product">  
            <img src="uploads/${products.productIMG}" id="iphone" style="width:15em; height:15em;" >
        </div>
         <div class="singlepro">
            </br></br></br>
            <p class="details"><b> ${products.productName}</b></p>
            <ul>
              <li>${products.productDetails}</li>
            </ul>
            <p class="price">Rs. ${products.productPrice}</p>
            <p><button type="submit" name="pname" value=${products.productId} >Buy now</button></p>
            <hr/>
  </div>
    </c:forEach>
    
    </form>
    
    
    
</body>
</html>