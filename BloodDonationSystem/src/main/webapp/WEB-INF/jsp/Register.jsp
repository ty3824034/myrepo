<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<script src='http://192.168.43.222:7724/js/jquery-2.2.1.min.js'></script>
<script src='http://192.168.43.222:7724/js/statecity.js'></script>
<head>
<meta charset="ISO-8859-1">
<title>New Registration</title>
</head>
<body onmessage="Message()"><br>
<form:form action="/SubmitNewUser" method="POST" name='registerform' onsubmit="false" enctype="multipart/form-data" modelAttribute="user">
<table width='80%'>
<tr valign='top'><td><ul>
<li><a href='/OurHomePage'>Home</a></li>
<li><a href='/UserLogin'>Login</a></li>
 
</ul></td>
<td align='right'><center><table valign='top' height="450" cellpadding='2.2'><caption><font size='6.3'><b>New User<hr></hr></b></font></caption>
<td><tr><td>Name:</td><td><form:input path="name" pattern='[A-Za-z]+[ A-Za-z]+' required='true'/></td></tr>
<tr><td>Gender:</td><td><form:radiobutton path="gender" value="Male" required='true'/>Male <form:radiobutton path="gender" value="Female" required='true'/>Female</td></tr>
<tr><td>DOB:</td><td><form:input path="dob" type="date" required='true'/></td></tr>
<tr><td>Email:</td><td><form:input type='email' path="email" required='true'/></td></tr>
<tr><td>Phone:</td><td><form:input path="phone" value='<%=(String)(session.getAttribute("phone")) %>' readonly='true'/></td></tr>
<tr><td>Verification Code:</td><td><input type='number' name='Code' required/></td></tr>
<tr><td>Address:</td><td><form:input path="address" required='true'/></td></tr>
<tr><td>State:</td><td><form:select path="state" id="statename" required='true'><option disabled selected>-State-</option></form:select></td></tr>
<tr><td>City:</td><td><form:select path="city" id="cityname" required='true'><option disabled selected>-City-</option></form:select></td></tr>
<tr><td>Blood:</td><td><form:select path="blood" required='true'><option disabled selected>-Blood-</option><option>A+</option><option>A-</option><option>B+</option><option>B-</option><option>AB+</option><option>AB-</option><option>O+</option><option>O-</option></form:select></td></tr>
<tr><td>Password:</td><td><form:password path="password" required='true'/></td></tr>
<tr><td>Photo:</td><td><input type="file" name='pic'></td></tr>
<tr><td>Gov. Id Proof:</td><td><input type="file" name='proof' required='true'></td></tr>
<tr><td>Blood Group Certificate</td><td><input type="file" name='certificate'></td></tr>
</table>
<table>
<tr><td>${Message1}</td></tr>
<tr><td>${Message2}</td></tr>	
</table>
<input type="Submit">
</td></tr></table></center>
</form:form>
<br>
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
      height: 100%;
      width: 100%;
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
input[type=text],input[type=email],input[type=number],input[type=password],select,input[type=file],input[type=date]{
border: none;
border-bottom: 2px solid red;
height: 35px;
width: 85%;
}

input[type=submit] {
  display: inline-block;
  padding: 10px 20px;
  font-size: 22px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #ff4000;
  border: none;
  border-radius: 12px;
  box-shadow: 0 7px #999;
}

input[type=submit]:hover {background-color: #3e8e41}

input[type=submit]:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

td{
font-size:20px;
}
</style>
<script type="text/javascript">
function Message()
{   alert(${Message1} ${Message2});
	}

</script>
</html>
