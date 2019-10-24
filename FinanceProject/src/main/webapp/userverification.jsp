<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" media="screen" href="cssfiles/verify.css" />
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
              <li><a href="indexlogin.jsp" title="">Home</a></li>
              <li  class="current_page_item"><a href="adminverification.jsp"  title="">Requests</a></li>
              <li><a href="addproduct.jsp" title="">Add Product</a></li>
              <li><a href="index.jsp" title="">Logout</a></li>
            </ul>
          </div>
        </div>
      </div>

      <div class="pos-center">
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
                            <th>ACTIVATE/DEACTIVATE</th>
                            <th>COMMENTS</th>             
                                  
                            
                        </tr>
                        <tr>
                            <td>a</td>
                            <td>b</td>
                            <td>c</td>
                            <td>d</td>
                            <td>e</td>
                            <td>f</td>
                            <td>f</td>
                            <td>
                                <form>
                                        <input type="radio" name="status" value="Accept"> ACTIVATE <br>
                                        <input type="radio" name="status" value="Reject"> DEACTIVATE<br>
                                </form>
                            </td>
                            <td><textarea style="resize:none;"></textarea></td>
                        </tr>
                 </table>
        </div>





</body>
</html>