
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Page Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="cssfiles\signup.css" />
<script src="javascriptfiles\signup.js"></script>
</head>
<body>
	<div class=" split left" style="background-color: white;">
		<img src="imagesfiles\register1.png" alt="registeration image">

	</div>

	<div class="split right">
		<div class="outer">
			<h1>
				<center>Register</center>
			</h1>
	`		<form name="myForm"  action="register.lti" method="post" onsubmit="validate()">

				<div class="extra">
					<label><a style="margin-right: 188px;">First Name<i>*</i></a> <a>Last Name<i>*</i></a>
					</label><br> <input type="text" class="input" name="firstname" id="fname"
						placeholder="" autofocus="on" id="name" style="margin-right: 64px;">
					
					<input type="text" class="input" name="lastname" id="lname"
						placeholder="" >
					<div><a id="fname1" href="javascript:void()" onclick="document.getElementById('myform').namecheck();"></a><a id="lname1"></a></div>
				</div>


				<div class="extra">
					<label style="margin-right: 204px;">Email Id<i>*</i></label>
					<label>Mobile Number<i>*</i></label> <input type="email"
						class="input" name="email" id="email" placeholder="" required style="margin-right: 64px;">
					
					<input type="number" class="input" name="phoneno" id="phone"
						placeholder="" required><br>
				</div>

				<div class="extra">
					<label>Address<i>*</i></label><br>
					<textarea name="address" id="add" cols="66.5" rows="2" required></textarea>
				</div>

				<div class="extra">
					<label style="margin-right: 2px;">Username : <i>*</i></label> <input type="text" class="input"
						name="username" placeholder="" required><br>
				</div>

				<div class="extra">
					<label style="margin-right:198px;">Password<i>*</i></label>
					
					<label>Confirm Password<i>*</i></label> <input type="password"
						class="input" name="password" id="pass" placeholder="" required style="margin-right: 64px;">
					
					<input type="password" class="input" name="cpassword" id="cpass"
						placeholder="" required><br>
				</div>



				<div class="extra">
					<label>Select Card Type<i>*</i></label><label>
						<input type="radio" name="card" value="gold"> Gold <input
						type="radio" name="card" value="titanium">Titanium<br>
					</label>
				</div>
				<br>



				<div class="extra">
					<label style="margin-right:10px;">Select Bank Name<i>*</i></label> <select
						name="Bank" data-rule="required" data-default="3">
						<option value="0">--No select--</option>
						<option value="Citi Bank">Citi Bank</option>
						<option value="HDFC Bank">HDFC Bank</option>
						<option value="ICICI Bank">ICICI Bank</option>
						<option value="Axis Bank">Axis Bank</option>
					</select>
				</div>
				<br>


				<div class="extra">
					<label style="margin-right:162px;">Savings A/c No<i>*</i></label>
					<label>IFSC
						Code<i>*</i>
					</label> <input type="number" class="input" name="acno" placeholder=""
						required style="margin-right:63px;">
					
					<input type="text" class="input" name="ifsc" placeholder=""
						required><br>
				</div>

				<div class="extra">
					<label style="margin-right:4px;">Upload Aadhar Card<i>*</i></label> <input type="file"
						name="aadhar" />
				</div>

				<div class="extra">
					<label style="margin-right:24px;">Upload PAN Card<i>*</i></label> <input type="file"
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