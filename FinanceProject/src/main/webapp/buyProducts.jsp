<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="cssfiles/product-inst.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src=""></script>

    <title>Product List</title>

    
    <script>
        function view1() {
            document.getElementById('a').setAttribute('style', 'display:block');
            document.getElementById('b').setAttribute('style', 'display:none');
            document.getElementById('c').setAttribute('style', 'display:none');
            document.getElementById('d').setAttribute('style', 'display:none');
        }
        function view2() {
            document.getElementById('a').setAttribute('style', 'display:none');
            document.getElementById('b').setAttribute('style', 'display:block');
            document.getElementById('c').setAttribute('style', 'display:none');
            document.getElementById('d').setAttribute('style', 'display:none');
        }
        function view3() {
            document.getElementById('a').setAttribute('style', 'display:none');
            document.getElementById('b').setAttribute('style', 'display:none');
            document.getElementById('c').setAttribute('style', 'display:block');
            document.getElementById('d').setAttribute('style', 'display:none');
        }
        function view4() {
            document.getElementById('a').setAttribute('style', 'display:none');
            document.getElementById('b').setAttribute('style', 'display:none');
            document.getElementById('c').setAttribute('style', 'display:none');
            document.getElementById('d').setAttribute('style', 'display:block');
        }
    </script>

    <style>
    .myDiv:target{

        display:block !important;

        }

    </style>
</head>  
<body  style="background-color:aliceblue">

  <!--Header-->
  <div id="header-wrapper">
    <div id="header" class="container">
      <div id="logo">
    <h1 style="color:white;">EMI Finance</h1>
      </div>
      <div id="menu">
        <ul>
          <li class="current_page_item"><a href="home.lti" accesskey="1" title="">Home</a></li>

          <li><a href="getProduct.lti" accesskey="4" title="">Products</a></li>
        </ul>
      </div>
    </div>
  </div>

<div>

      <!-- <div class="navigation">
            Hii Username 
            <button type="submit" style="width:90px; height: 40px;">Logout</button>
        </div>-->
       
        
         <div class="product">  
            <img src="uploads/${product.productIMG}" id="iphone" style="width:20em; height:17em;" >    
         </div>


         <div class="singlepro">
            </br></br></br>
            <p class="details"><b>${product.productName}</b></p>
            <hr>
            
            <ul>
              <li>${product.productDetails}</li>
     
            </ul>
            <p class="price">${product.productPrice}</p>

              <div>
                <a href="#" onclick="view1()"><button class="dropbtn" >EMI Options</button></a>
              </div>
            

            <!--3 months table-->
            <div class="myDiv" id="a" style="display:none">
            <table style="width:50%">
              <tr>
                <th>EMI Plan</th>
                <th>Per month</th>
                <th>Total cost</th>
              </tr>
              <tr>
                <td>3 Months</td>
                <td><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${product.productPrice/3}"/></td>
                <td>${product.productPrice}</td>
              </tr>
              <tr>
                <td>6 Months</td>
                <td><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${product.productPrice/3}"/></td>
                <td>${product.productPrice}</td>
              </tr>
              <tr>
                <td>9 Months</td>
                <td><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${product.productPrice/9}"/></td>
                <td>${product.productPrice}</td>
              </tr>
              <tr>
                <td>12 Months</td>
                <td><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${product.productPrice/12}"/></td>
                <td>${product.productPrice}</td>
              </tr>
            </table>
            <p><button class="dropbtn" type="submit" onclick="location.href='payment.html'">Buy now</button></p>
            </div>

            </div>    
          </div>       
</body>
</html>