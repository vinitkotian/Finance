<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="cssfiles/verifyyy.css">
    <title>Document</title>
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
              <li><a href="userverification.jsp" title="">Home</a></li>
              <li><a href="userverification.jsp"  title="">Requests</a></li>
              <li  class="current_page_item"><a href="#addproduct" title="">Add Product</a></li>
              <li><a href="index.jsp" title="">Logout</a></li>
            </ul>
          </div>
        </div>
      </div>

      <div class="wrapper fadeInDown">
            <div id="formContent">
              <h2 class="active"> Add Product </h2>
              <br><br>
              <form action="add.lti" method="post" enctype="multipart/form-data">
                <label>Enter product name</label><br><br>
                <input type="text" id="pname" class="fadeIn second" name="pname" ><br><br>
                <label>Enter product price</label><br><br>
                <input type="number" id="price" class="fadeIn second" name="price" ><br><br>
                <label>Enter product details</label><br><br>
                <input type="text" id="pdetails" class="fadeIn second" name="pdetails" ><br><br>
                <label>Add product image</label><br><br>
                <input type="file" name="productimg"><br><br>
                <button type="submit">Add</button><br><br>
              </form>





</body>
</html>