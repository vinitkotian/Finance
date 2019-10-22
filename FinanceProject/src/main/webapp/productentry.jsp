<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>  
<form action="add.lti" method="post" enctype="multipart/form-data">
Enter Product name:<input type="text" name="pname"/><br>
Enter Product details:<input type="text" name="pdetails"/><br>
Enter Product price:<input type="text" name="price"/><br>
<!--  Enter Product IMG:<input type="text" name="pimg"/><br>-->
Upload img of product : <input type="file" name="productimg" /> <br/>
<button type="submit">add</button>
</form>
</body>
</html>