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
      
      
    <div id="outer" style="border: 2px solid black;top:35em;width:99.7%;" >
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

        <div style="font-size:22px;float:right;padding-right: 14em; font-family: cursive; height: 23px; margin-top: 65px;">
                <p>TOTAL CREDIT:${user.emiCard.cardLimit}</p>
                <p>CREDIT USED:${user.emiCard.creditUsed}</p>
                <p>REMAINING CREDIT:${(user.emiCard.cardLimit)-(user.emiCard.creditUsed)}</p>
              	<p>CARD STATUS:${user.emiCard.cardstatus}</p>
        </div>
        </div>
        <hr>
        <div class="pos-center">
            <h3 class="heading">TRANSACTION HISTORY</h3>
        </div>
        <div  class="table">
                <table style="width: 80%;">
                        <tr>
                        	<th>TRANSACTION NO</th>
                            <th>PRODUCT NAME</th>
                             <th>PRODUCT PRICE</th>
                            <th>PURCHASE DATE</th>
                            <th>EMI SCHEME</th>
                            <th>PAID AMT</th>
                            <th>BALANCE AMT</th>   
                        </tr>
                         
                        <c:forEach var="transaction" items="${user.transaction}">
                        <c:set var = "count"  value = "${0}"/>
                        <tr>
                            <td>${transaction.transactionId}</td>
                            <td>${transaction.product.productName}</td>
                            <td>${transaction.product.productPrice}</td>
                            <td>${transaction.emi.startDate}</td>
                            <td>${transaction.scheme}</td>
                            <c:forEach var="installment" items="${transaction.emi.installment}">
                             <c:if test = "${installment.datePaid != null}">
                           			<c:set var="count" value="${count + 1}"/>
                                </c:if>
                              </c:forEach>
                            <td>${(transaction.emi.installmentAmount)*count}</td>
                            <td>${(transaction.product.productPrice)-((transaction.emi.installmentAmount)*count)}</td>
                        </tr>
                        </c:forEach>
                 </table>
       </div>
       <div  class="table">
                 <table style="width: 80%; margin-top:10px">
                        <tr>
                        	<th>EMI NO</th>
                            <th>INSTALLMENT NO</th>
                             <th>PRODUCT NAME</th>
                            <th>DUE DATE </th>
                            <th>STATUS</th>
                            <th>PAY EMI</th>
                        </tr>
                          <c:forEach var="transaction" items="${user.transaction}">
                        <c:set var = "status"  value = "pending"/>
                        <c:forEach var="installment" items="${transaction.emi.installment}">
                        <tr>	
                            <td>${transaction.emi.emiNo}</td>
                            <td>${installment.installmentId}</td>
                            <td>${transaction.product.productName}</td>
                            <td>${installment.dueDate}</td>
                            <c:choose>
   								<c:when test="${installment.datePaid!=null}">
   								 	<c:set var = "status"  value = "paid"/>
   								</c:when>
   								<c:otherwise>
									 <c:set var = "status"  value = "pending"/>	 
								</c:otherwise>
							</c:choose>
                            <td>${status}</td>
                            <c:choose>
   								<c:when test="${installment.datePaid!=null}">
   								 	<c:set var = "status"  value = "paid"/>
   								 	<td>${status}</td>
   								</c:when>
   								<c:otherwise>
									 <c:set var = "status"  value = "pending"/>	 
									<td><button >pay</button></td>
								</c:otherwise>
								</c:choose>
                            </tr>
                            </c:forEach>
                        </c:forEach>
                 </table>
        </div>
    </div>
    </body>
</html>