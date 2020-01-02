<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Phone Verification</title>
</head>
<body><br>
<ul>
<li><a href='/OurHomePage'>Home</a></li>
<li><a href='/UserLogin'>Login</a></li>
</ul>
<div class="loginbox">
<img  src="/images/avatar.png" class="avatar">
<h1>Verify Phone</h1>

<form action="/OTP" name="RegForm" onsubmit="return validate()" method="post">
<p><font size='5'>Phone:</font></p>
<input type="text" name="phone" placeholder="Enter Phone Number" pattern=[0-9]{10} maxlength='10' required/><br><br>
<input type="submit" name="">
</form>
</div>
</body>
<style>
body{ 
      margin: 0;
      padding: 0;
      font-family: sans-serif;
      background-image: url(bglogin2.jpeg);
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center center;
      background-attachment: fixed;
      height: 91vh;
}
ul li a{
	text-decoration: none;
	font-family: Georgia,"Times New Roman",Times,serif;
	background-color: #5c755e;
	color: white;
	display: block;
	width: 150px;
	margin: 5px;
	padding: 10px;
	border: 1px solid red;
	border-radius: 2px;
	text-align: center;
	height: 25px;
	line-height: 25px;
}
ul li a:hover{
	background-color: #d3d3d3;
	color:black;
}

.loginbox{
width: 320px;
height: 380px;
background: #000;
color: #fff;
top: 50%;
left: 50%;
position: absolute;
transform: translate(-50%,-50%);
box-sizing: border-box;
padding: 70px 30px;
}
.avatar{
width: 100px;
height:100px;
position: absolute;
top: -50px;
left: calc(50% - 50px);
}
h1{
margin: 0;
padding: 0 0 20px;
text-align: center;
font-size: 30px;
}
.loginbox p{
margin: 0;
padding: 0;
font-weight: bold;
}
.loginbox input{
width: 100%;
margin-bottom: 20px;
}
.loginbox input[type="text"]{
border: none;
border-bottom: 1px solid #fff;
background: transparent;
outline: none;
height: 50px;
color: #fff;
font-size: 16px;
}
.loginbox input[type="submit"]{
border: none;
outline: none;
height: 40px;
background: #fb2525;
color:#fff;
font-size: 18px;
border:-radius: 20px;
}
.loginbox input[type="submit"]:hover{
cursor: pointer;
background: #ffc107;
color: #000;
}
</style>
 
</html>
