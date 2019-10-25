<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
       <link rel="stylesheet" type="text/css" media="screen" href="cssfiles/dashboard.css">
       <link rel="stylesheet" type="text/css" media="screen" href="fonts.css">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="javascriptfiles/activate.js"></script>

    </head>
    <body>

          <!--Header-->
  <div id="header-wrapper">
        <div id="header" class="container">
          <div id="logo">
        <h1 style="color:white;">EMI Finance</h1>
          </div>
          <div id="menu">
            <ul>
              <li class="current_page_item"><a href="index.html" accesskey="1" title="">Home</a></li>
              <li><a href="productlist.html" accesskey="4" title="">Products</a></li>
            </ul>
          </div>
        </div>
      </div>
      
      
    <div id="outer" style="border: 2px solid black;top:35em;width:99.7%;height:108vh;" >
        <div class="pos-center">
            <div id="logo1">
                <h3>DASHBOARD</h3>
            </div>
        </div>
        <div style="height:19em;">
<c:set var="dateParts" value="${fn:split(user.emiCard.expiryDate, '-')}" />
        <div class="card container" style="top:5em;left:13em;float:left;">
            <img id="a" src="images/cardimg.png" style="border:1px solid black;">
            <div class="pos-no"><text style="font-size:20px">${user.emiCard.cardNo}</text></div> 
            <div class="pos-expiry"><text style="color:silver;font-size:10px" >EXPIRY :${dateParts[1]}/${dateParts[0]} </div>
            <div class="pos-name">${user.firstName} ${user.lastName}</div>
            <div class="pos-cardtype">${user.emiCard.cardType}</div>  
            <div class="pos-bankname">BANK NAME</div>
        </div>

        <div style="font-size:22px;float:right;padding-top: 4em;padding-right: 14em; font-family: cursive;">
                <p>TOTAL CREDIT:${user.emiCard.cardLimit}</p>
                <p>CREDIT USED:${user.emiCard.creditUsed}</p>
                <p>REMAINING CREDIT:${(user.emiCard.cardLimit)-(user.emiCard.creditUsed)}</p>
        </div>
        </div>
        <hr>

       

        <div class="pos-center">
            <h3 class="heading">TRANSACTION HISTORY</h3>
        </div>
        <div  class="table">
                <table style="width: 80%;">
                        <tr>
                            <th>PRODUCT NAME</th>
                            <th>PURCHASE DATE</th>
                            <th>UPCOMING INSTALLMENT DATE</th>
                            <th>PAID AMT</th>
                            <th>BALANCE AMT</th>   
                        </tr>
                        <tr>
                            <td></td>
                            <td>b</td>
                            <td>c</td>
                            <td>d</td>
                            <td>e</td>
                        </tr>
                 </table>
        </div>
        <div class="pos-center">
                <h3 style="color:red;font-size:30px;">Pay your installment now!</h3>
                <button type="submit" onclick="location.href='payment.html'">Pay Now</button>
        </div>


        
    </div>
    </body>
</html>