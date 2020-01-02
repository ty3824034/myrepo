<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.mpct.blood.model.Users" %>
    <!DOCTYPE html>


<html lang="en">
<script src='http://192.168.43.222:7724/js/jquery-2.2.1.min.js'></script>
<script src='http://192.168.43.222:7724/js/statecity.js'></script>
<title>Home Page</title>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
 <%@ taglib prefix="form1" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<body>
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <% Users E=(Users)(session.getAttribute("SES_User")); %>
<img src='/photos/<%=E.getPicture()%>' width='100' height='110'><br><b><%=E.getName() %></b>
 <br><br><table border="2">
   <tr> <th><h3><b>Navigation Bar</b></h3></th></tr>
 <tr><td height='330'> <div class="w3-bar-block">
    <a href="/OurHomePage" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
    <a href="#donate" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Donate Blood</a> 
    <a href="#request" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Request Blood</a> 
    <a href="#yourcontribution" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Your Contribution</a> 
    <a href="#viewprofile" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">View Profile</a> 
    <a href="#complaints" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Complaints/Feedback</a>
    <a href="/Logout" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Logout</a>
   </div></td></tr> </table>
  
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()"><i class="fa fa-bars" aria-hidden="true"></i></a>
  <span>Blood Donation System</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">
<img src=/images/bloodback.jpg style="width:100%; height:100hv">

  
  <!-- Header -->
  <div class="w3-container" style="margin-top:60px" id="donate">
  <br>
    <h1 class="w3-jumbo"><b>Save Life</b></h1>
    <h1 class="w3-xxxlarge w3-text-red"><b>Donate Blood</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
   
  </div>
  
  <!-- Donate Blood (modal) -->
  <div class="w3-row-padding">
    <div class="w3-half">
    
    <form action='/SubmitDonator' method='post'>
    <table height='390'>
    <tr><td><b>Name</b></td><td><input value=<%=E.getName() %> name="dname" readonly></td></tr>
    <tr><td><b>Phone</b></td><td><input value=<%=E.getPhone() %> name="dphone" readonly></td></tr>
    <tr><td><b>Blood</b></td><td><input value=<%=E.getBlood() %> name="dblood" readonly></td></tr>
    <tr><td><b>Quantity</b></td><td><input type="number" name="dquantity" min='300' max='450' required> Only in ml</td></tr>
    <tr><td><b>Appointment Date</b></<td><td><input type='date' name='ddate' required></td></tr>
    <tr><td><b>State</b></<td><td><select id='statename' name='dstate' required><option value='' disabled selected>-State-</option></select></td></tr>
   <tr><td><b>City</b></td><td><select id='cityname' name='dcity' required><option value='' disabled selected>-City-</option></select></td></tr>
   <tr><td><b>Hospitals</b></td><td><select id='hospitalname' name='dhospital' required><option value='' disabled selected>-Hospital-</option></select></td></tr>
 
    </table>
    <input type="checkbox" name='dterm' value='Accept' required>&nbsp;&nbsp;&nbsp;Please Click If you are agree to donate blood.
    <center>
    <input type='submit'></center>
    </form></div>
  <font color='blue	'> <p>${model.Message1}</p>
   <p>${model.Message2}</p>
   <p>${model.Message3}</p></font>
    </div>

    
  <!-- request -->

  <div class="w3-container" id="request" style="margin-top:70px"><br><br>
     <h1 class="w3-jumbo"><b>If Need</b></h1>
    <h1 class="w3-xxxlarge w3-text-red"><b>Request Blood</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <p>
    <form action='/SubmitReceptor' method='post'>
    <table height='390'>
    <tr><td><b>Name</b></td><td><input value=<%=E.getName() %> name="name" readonly></td></tr>
    <tr><td><b>Phone</b></td><td><input value=<%=E.getPhone() %> name="phone" readonly></td></tr>
     <tr><td><b>State</b></<td><td><select id='sstatename' name='state' required><option value='' disabled selected>-State-</option></select></td></tr>
   <tr><td><b>City</b></td><td><select id='ccityname' name='city' required><option value='' disabled selected>-City-</option></select></td></tr>
   <tr><td><b>Hospitals</b></td><td><select id='hhospitalname' name='hospital' required><option value='' disabled selected>-Hospital-</option></select></td></tr>
 <tr><td><b>Blood Type</b></td><td><select id='bloodtype' name='blood' required><option value='' disabled selected>-Blood-</option></select><span id='qty'> </span></td></tr>
    <tr><td><b>Quantity</b></td><td><input type="number" name="quantity" min='100' max='500' required> Only in ml</td></tr>
    <tr><td><b>Receive date</b></<td><td><input type='date' name='date' required></td></tr>
    
   </table>
   <input type="checkbox" name='term' value='Accept' required>&nbsp;&nbsp;&nbsp;Please click if you are agree to receive blood.
   <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type='submit'>
   
    
    </form></div>
  <font color='blue	'> <p>${model.Message1}</p>
   <p>${model.Message2}</p>
   <p>${model.Message3}</p></font>
    
  
  <!-- your contribution -->
  <div class="w3-container" id="yourcontribution" style="margin-top:70px"><br><br><br><br>
   <h1 class="w3-jumbo"><b>Thanks for</b></h1>
    <h1 class="w3-xxxlarge w3-text-red"><b>Your Contribution</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <p></p>
  </div>



  <!-- Your Contribution modal-->
  <div class="w3-row-padding w3-grayscale">
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
    <div class="w3-half"><img src="/images/1st.jpg" style="width:100%" onclick="onClick(this)" alt="1st blood donation"></div>
        <div class="w3-container">
          <h3>BIMR Hospital</h3>
          <p class="w3-opacity">15/10/2018</p>
          <p>Be someone's savior donate blood</p>
        </div>
      </div>
    </div>
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
      <div class="w3-half"><img src="/images/2nd.jpg" style="width:100%" onclick="onClick(this)" alt="2nd blood donation"></div>
        <div class="w3-container">
          <h3>Cancer Hospital</h3>
          <p class="w3-opacity">12/03/2019</p>
          <p>Save someone's life donate blood</p>
        </div>
      </div>
    </div>
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
     <div class="w3-half"> <img src="/images/3rd.jpg" style="width:100%" onclick="onClick(this)" alt="3rd blood donation"></div>
        <div class="w3-container">
          <h3>Blood Camp</h3>
          <p class="w3-opacity">18/10/2019</p>
          <p>Donate blood to save life</p>
        </div>
      </div>
    </div>
  </div>

<br><br>
     
      
     
    


  <!-- Modal for full size images on click-->
  <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
    <span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
      <img id="img01" class="w3-image">
      <p id="caption"></p>
    </div>
  </div>


  <!-- viewprofile / Pricing Tables -->
  <div class="w3-container" id="viewprofile" style="margin-top:70px">
      <h1 class="w3-jumbo"><b>Wanna Change</b></h1>
    <h1 class="w3-xxxlarge w3-text-red"><b>View Profile</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    
  </div>

  <div class="w3-row-padding">
    <div class="w3-half w3-margin-bottom">
      <ul class="w3-ul w3-light-grey w3-center">
        <li class="w3-dark-grey w3-xlarge w3-padding-32">Details</li>
        <li class="w3-padding-16">Phone</li>
        <li class="w3-padding-16">Email</li>
        <li class="w3-padding-16">Gender</li>
        <li class="w3-padding-16">Name</li>
        <li class="w3-padding-16">DOB</li>
        <li class="w3-padding-16">1234
        </li>
        <li class="w3-light-grey w3-padding-24">
          <button class="w3-button w3-white w3-padding-large w3-hover-black">Edit</button>
        </li>
      </ul>
    </div>
        
    <div class="w3-half">
      <ul class="w3-ul w3-light-grey w3-center">
        <li class="w3-red w3-xlarge w3-padding-32">Images</li>
        <li class="w3-padding-16">1</li>
        <li class="w3-padding-16">2</li>
        <li class="w3-padding-16">3</li>
        <li class="w3-padding-16">4</li>
        <li class="w3-padding-16">5</li>
        <li class="w3-padding-16">1234
      
        </li>
        <li class="w3-light-grey w3-padding-24">
          <button class="w3-button w3-red w3-padding-large w3-hover-black">Edit</button>
        </li>
      </ul>
    </div>
  </div>
  
  <!-- complaints -->
  <div class="w3-container" id="complaints" style="margin-top:75px">
        <h1 class="w3-jumbo"><b>Please share if any</b></h1>
    <h1 class="w3-xxxlarge w3-text-red"><b>Complaints /Feedback</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <p>Do you want to work with us? Fill out the form and fill me in with the details :) We love meeting new people!</p>
    <form action="/action_page.php" target="_blank">
      <div class="w3-section">
        <label>Name</label>
        <input class="w3-input w3-border" name="Name" value=<%=E.getName() %> readonly>
      </div>
      <div class="w3-section">
        <label>Email</label>
        <input class="w3-input w3-border" name="Email" value=<%=E.getEmail() %> readonly>
      </div>
      <div class="w3-section">
        <label>Message</label>
        <input class="w3-input w3-border" type="text" name="Message" required>
      </div>
      <button type="submit" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">Send Message</button>
    </form>  
  </div>

<!-- End page content -->
</div>


<!-- W3.CSS Container -->
<div class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px"><p class="w3-right">Brought to you by <a href="https://www.mpct.org" title="MPCT Website" target="_blank" class="w3-hover-opacity">MPCT.org</a></p></div>

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>

</body>
</html>