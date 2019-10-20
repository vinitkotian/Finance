<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Page Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="signup.css" />
<script src="signup.js"></script>
</head>
<body>
	<div class=" split left" style="background-color: white;">
		<img src="Signup\register1.png" alt="registeration image">

	</div>

	<div class="split right">
		<div class="outer">
			<h1>
				<center>Register</center>
			</h1>
			<form name="myForm" method="post" action="register.lti"
				enctype="multipart/form-data" onsubmit="validate()">

				<div class="extra">
					<label>First Name<i>*</i></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Last
						Name<i>*</i>
					</label><br> <input type="text" class="input" name="fname" id="fname"
						placeholder="" autofocus="on" id="name" required>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" class="input" name="lname" id="lname"
						placeholder="" required><br>
				</div>


				<div class="extra">
					<label>Email Id<i>*</i></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label>Mobile Number<i>*</i></label> <input type="email"
						class="input" name="email" id="email" placeholder="" required>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="number" class="input" name="phone" id="phone"
						placeholder="" required><br>
				</div>

				<div class="extra">
					<label>Address<i>*</i></label><br>
					<textarea name="add" id="add" cols="66.5" rows="2" required></textarea>
				</div>

				<div class="extra">
					<label>Username<i>*</i></label> <input type="text" class="input"
						name="username" placeholder="" required><br>
				</div>

				<div class="extra">
					<label>Password<i>*</i></label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label>Confirm Password<i>*</i></label> <input type="password"
						class="input" name="password" id="pass" placeholder="" required>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" class="input" name="cpassword" id="cpass"
						placeholder="" required><br>
				</div>



				<div class="extra">
					<label>Select Card Type<i>*</i></label>&nbsp;&nbsp; <label>
						<input type="radio" name="card" value="gold"> Gold <input
						type="radio" name="card" value="titanium">Titanium<br>
					</label>
				</div>
				<br>



				<div class="extra">
					<label>Select Bank Name<i>*</i></label>&nbsp;&nbsp;&nbsp;&nbsp; <select
						name="city" data-rule="required" data-default="3">
						<option value="0">--No select--</option>
						<option value="1">Citi Bank</option>
						<option value="2">HDFC Bank</option>
						<option value="3">ICICI Bank</option>
						<option value="4">Axis Bank</option>
					</select>
				</div>
				<br>


				<div class="extra">
					<label>Savings A/c No<i>*</i></label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>IFSC
						Code<i>*</i>
					</label> <input type="number" class="input" name="accno" placeholder=""
						required>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" class="input" name="code" placeholder=""
						required><br>
				</div>

				<div class="extra">
					<label>Upload Aadhar Card<i>*</i></label> <input type="file"
						name="aadhar" />
				</div>

				<div class="extra">
					<label>Upload PAN Card<i>*</i></label> <input type="file"
						name="pan" />
				</div>
				<br>
				<div>
					<button type="reset">Reset</button>
					<br>
				</div>
				<br>

				<div>
					<button type="submit" onclick="return validateForm()">Register</button>
				</div>
			</form>
		</div>

	</div>

</body>
</html>