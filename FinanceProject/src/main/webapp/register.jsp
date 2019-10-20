<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<from method="post" action="register.lti">
first name<input type="text" name="firstname"/><br><br>
last name<input type="text" name ="lastname"/><br><br>
user name<input type="text" name ="username"/><br>
dob<input type="date" name ="DOB"/><br><br>
phoneno<input type="text" name ="phoneno"/><br><br>
email<input type="text" name ="email"/><br><br>
password<input type="text" name ="password"/><br><br>
address<input type="text" name ="address"/><br><br>
bank name<input type="text" name ="Bank"/><br><br>
acno<input type="text" name ="acno"/><br><br>
ifsc<input type="text" name ="ifsc"/><br><br>
<!--  regdate<input type="date" name ="regdate"/><br><br>-->
<button type = "submit">register</button>
</from>
</body>
</html>