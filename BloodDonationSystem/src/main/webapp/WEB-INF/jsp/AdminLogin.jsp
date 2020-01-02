<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix='form' uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body><br>
<form:form action='/CheckLoginAdmin' method='post' modelAttribute='admin'>
<ul>
<li><a href='/OurHomePage'>Home</a></li>
<li><a href='/UserLogin'>Users Login</a></li>
</ul>
<center>
<table width='300' height='150' cellpadding='5'>
<caption><font size='7'><b>Admin Login<hr></hr></b></font></caption><br><br>
<tr><td>Admin Id:</td><td><form:input placeholder="Enter Admin Id" path="adminid"/></td></tr>
<tr><td>Password:</td><td><form:password placeholder="Enter Password" path="password"/></td></tr>

</table>
<input type='Submit'/><br><br>
<font size='5' color='red'>${Message}</font>
</center>
</form:form>
</body>
<style>
ul{
	list-style: none;
	padding: 0;
	margin: 0;
}
ul li a{
	text-decoration: none;
	font-family: Georgia,"Times New Roman",Times,serif;
	background-color: #5c755e;
	color: white;
	display: block;
	width: 100px;
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
body{ background-image: url('bglogin2.jpeg');
      background-size: cover;
}
input[type=text]{
border: none;
border-bottom: 2px solid red;
height: 40px;
}
input[type=password]{
border: none;
border-bottom: 2px solid red;
height: 40px;
}

td{
font-size:20px;
}
</style>
</html>
