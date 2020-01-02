<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>


<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<body><br>
<ul>
<li><a href='/OurHomePage'>Home</a></li>
<li><a href='/Verification'>Register</a></li>
</ul>
<form:form action='/CheckLoginUser' method='post' modelAttribute='user'>

<div class="loginbox">
<h1>User Login</h1>
<div class='textbox'>
<i class="fa fa-user" aria-hidden="true"></i>
<form:input name='phone' placeholder="Enter Phone Number" path="phone"/>
</div>
<div class='textbox'>
<i class="fa fa-lock" aria-hidden="true"></i>
<form:password placeholder="Enter Password" path="password"/>
</div>
<input class='btn' type='Submit' /><br><br>
<font size='5' color='red'>${Message}</font>
</div>
</form:form>

</body>
<style>
@import "https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
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


body{ 
      margin: 0;
      padding: 0;
      font-family: sans-serif;
      background: url('bglogin2.jpeg');
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center center;
      background-attachment: fixed;
      height: 91vh;
}
 .loginbox{
 width: 280px;
 position: absolute;
 top: 50%;
 left: 50%;
 transform: translate(-50%,-50%);
 color: black;
}
 .loginbox h1{
 float: left;
 font-size: 40px;
 border-bottom: 6px solid #4caf50;
 margin-bottom: 50px;
 padding: 13px 0;
}
 .textbox{
 width: 100%;
 overflow: hidden;
 font-size: 20px;
 padding: 8px 0;
 margin: 8px 0;
 border-bottom: 1px solid #4caf50;
}
 .textbox input{
 border: none;
 outline: none;
 background: none;
 color: black;
 font-size: 18px;
 width: 80%;
 float: left;
 margin: 0 10px;
}
 .textbox i{
 width: 26px;
 float: left;
 text-align: center;
 }
 .btn{
 width: 100%;
 background: none;
 border: 2px solid #4caf50;
 color: black;
 padding: 5px;
 font-size: 18px;
 cursor: pointer;
}
.btn:hover{
	background-color: #3A3737;
	color:white;
}
</style>
</html>