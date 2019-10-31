<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@page import="com.lti.finance.entity.Product" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" media="screen" href="cssfiles/verifyyy.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
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
              <li><a href="#home" title="">Home</a></li>
              <li  class="current_page_item"><a href="#request"  title="">Requests</a></li>
              <li><a href="addproduct.jsp" title="">Add Product</a></li>
              <li><a href="index.jsp" title="">Logout</a></li>
            </ul>
          </div>
        </div>
      </div>

      <div>
            <h3 class="heading">USER CARD REQUESTS</h3>
        </div>
        <div  class="table">
                <table style="width: 80%;">
                        <tr>
                        	<th>NAME</th>
                            <th>USER NAME </th>
                            <th>EMAIL ID</th>
                            <th>PHONE NO</th>
                            <th>CARD NO</th>
                            <th>CARD TYPE</th>
                            <th>CARD STATUS</th>
                            <th>COMMENTS</th> 
                            <th>ACTIVATE/DEACTIVATE</th>
                                        
                                  
                            
                        </tr>
                         <c:forEach var="emiCardUser" items="${emiCardUser}">
                        <tr>
                      		<form action="activatedeactivate.lti" method="post" >
                            <td>${emiCardUser.firstName}  ${emiCardUser.lastName}  ${emiCardUser.userId}</td>
                            <td>${emiCardUser.userName}</td>
                            <td>${emiCardUser.email}</td>
                            <td>${emiCardUser.phoneNo}</td>
                            <td>${emiCardUser.emiCard.cardNo}</td>
                            <td>${emiCardUser.emiCard.cardType}</td>
                            <td>${emiCardUser.emiCard.cardstatus}</td>
                            <td><textarea name="comments" style="resize:none;"  ></textarea></td>
                            <td>
                                      <!--<input type="radio" name="status" value="1"> ACTIVATE <br>
                                        <input type="radio" name="status" value="0"> DEACTIVATE<br>--> 
                                          <input type= "hidden" name="emiuserid" value="${emiCardUser.userId}"/>
                                        <button type="submit" name="cardStatus"  value="1" > ACTIVATE</button> 
                                        <button type="submit" name="cardStatus"  value="0"   >DEACTIVATE</button>
                                                            
                                </form>
                            </td>
                        </tr>
                        </c:forEach>
                 </table>
        </div>





</body>
</html>