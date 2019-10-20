function validate(){

/*Validation for name fields*/
var first = document.getElementById("fname");
var last = document.getElementById("lname");

var letters = /^[A-Za-z]+$/;
if(!first.value.match(letters))
  {
  alert("Please enter valid first name!");
  return false;
  }
if(!last.value.match(letters))
  {
    alert("Please enter valid last name!");
    return false;
  }

/*Validation for email*/
var email = document.getElementById("email");
var seq = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if (!email.value.match(seq))
  {
    alert("You have entered an invalid email address!")
    return (false)
  }

/*Validation for phone number*/
var phone = document.getElementById("phone");
var phoneno = /^\d{10}$/;

  if(!phone.value.match(phoneno))
    {
        alert("Please enter 10 digit number!");
        return false;
    }

/*Validation for password*/
/*Validation for confirm password*/
var pass = document.getElementById("pass");
var confirm = document.getElementById("cpass");
var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;

    if(!pass.value.match(passw))
    {
        alert("Password should be between 6 to 20 characters and contain atleast one numeric digit, one uppercase and one lowercase letter");
        return false;
    }
    if(!confirm.value.match(pass))
    {
        alert("Enter correct password!");
        return false;
    }




}



