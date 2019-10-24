<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
       <link rel="stylesheet" type="text/css" media="screen" href="cssfiles/dashboard.css">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
              <li><a href="login.html" accesskey="2" title="">Login</a></li>
              <li><a href="signup.html" accesskey="3" title="">Sign Up</a></li>
              <li><a href="productlist.html" accesskey="4" title="">Products</a></li>
            </ul>
          </div>
        </div>
      </div>
      
      
    <div id="outer" style="border: 2px solid black;top:35em;width:99.7%;height:130vh;" >
        <div class="pos-center">
            <div id="logo1">
                <h3>DASHBOARD</h3>
            </div>
        </div>
        <div class="card container" style="top:5em;">
            <img src="images/cardimg.png" >
            <div class="pos-no"><text style="font-size:20px">1234  1234 1234 1234</text></div> 
            <div class="pos-expiry"><text style="color:silver;font-size:10px" >EXPIRY :</text>  09/21</div>
            <div class="pos-name">PARTH RANA</div>
            <div class="pos-cardtype">GOLD</div>  
            <div class="pos-bankname">BANK NAME</div>
        </div>

      
        <div style="padding-left:55px;padding-top:20px; font-size:18px;">
                <p>TOTAL CREDIT:</p>
                <p>CREDIT USED:</p>
                <p>REMAINING CREDIT:</p>
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
                            <td>a</td>
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