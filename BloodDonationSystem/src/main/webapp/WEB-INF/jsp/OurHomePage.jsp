<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix='form' uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<title>Home Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="#login" class="w3-bar-item w3-button w3-padding-large w3-hide-small">OUR TEAM</a>
    <a href="#tour" class="w3-bar-item w3-button w3-padding-large w3-hide-small">OUR ACHIEVEMENTS</a>
    <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CONTACT</a>
    <a href="/UserLogin" class="w3-bar-item w3-button w3-padding-large w3-hide-small">LOGIN</a>
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">MORE <i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="#" class="w3-bar-item w3-button">Merchandise</a>
        <a href="#" class="w3-bar-item w3-button">Extras</a>
      <button class="w3-bar-item w3-button" onclick="document.getElementById('Video').style.display='block'">Blood Donation Process</button>
      </div>
    </div>
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>
</div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#login" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">OUR TEAM</a>
  <a href="#tour" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">OUR ACHIEVEMENTS</a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">CONTACT</a>
  <a href="/UserLogin" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">LOGIN</a>
   <button class="w3-bar-item w3-button" onclick="document.getElementById('Video').style.display='block'">Blood Donation Process</button>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="/images/1.jpg" style="width:100px height:100% position:absolute">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
     
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="/images/2.jpg" style="width:100px height:100% position:absolute">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
         
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="/images/3.jpg" style="width:100px height:100% position:absolute">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
        
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="/images/4.jpg" style="width:100px height:100% position:absolute">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
     
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="/images/5.jpg" style="width:100px height:100% position:absolute">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
     
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="/images/6.jpg" style="width:100px height:100% position:absolute">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
     
    </div>
  </div>
  
  
  <!-- The Team Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="login">
   <h2 class="w3-wide">OUR TEAM</h2>
    <p class="w3-opacity"><i>We love music</i></p>
    <p class="w3-justify">We've created this online system in order to establish door to door connection with the people. People, whoever needs for the blood can contact us and also, one can donate their blood too. Through this online  system we are able to give many ones new lives. As, we have the availability of sufficient blood to help many ones. 
For Further more queries, access in to the system and get connected with us to get all the useful informations about the work.</p>
    <div class="w3-row w3-padding-32">
      <div class="w3-third">
        <p><font size='3' color='voilet'><b>Deepak Yadav</b></font></p>
        <img src="/images/deepak.png" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%">
        <p><font size='3' color='voilet'><b>Designer and Coder</b></font></p>
      </div>
      <div class="w3-third">
        <p><font size='3' color='voilet'><b>Vishal Yadav</b></font></p>
        <img src="/images/vishal.jpeg" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%">
        <p><font size='3' color='voilet'><b>Tester</b></font></p>
      </div>
      <div class="w3-third">
        <p><font size='3' color='voilet'><b>Abhey Gupta</b></font></p>
        <img src="/images/abhey.jpeg" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%">
        <p><font size='3' color='voilet'><b>Advisor</b></font></p>
      </div>
    </div>
  </div>

  <!-- The Achievement Section -->
  <div class="w3-black" id="tour">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
      <h2 class="w3-wide w3-center">OUR ACHIEVEMENTS</h2>
      <p class="w3-opacity w3-center"><i>Remember to give feedback!</i></p><br>

    
      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
          <img src="/images/1achieve.jpg"  alt="Indore" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Indore</b></p>
            <p class="w3-opacity">Wed 21 Aug 2019</p>
            <p>Donated blood without any cost</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('loginModal').style.display='block'">Donate Now</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="/images/2achieve.jpg" height=90% alt="Madhya Pradesh" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Madhya Pradesh</b></p>
            <p class="w3-opacity">Sat 28 Nov 2016</p>
            <p>Free blood donation camp</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('loginModal').style.display='block'">Donate Now</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="/images/3achieve.jpg" alt="Uttar Pradesh" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Uttar Pradesh</b></p>
            <p class="w3-opacity">Sun 29 Nov 2016</p>
            <p>Blood camp at no cost</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('loginModal').style.display='block'">Donate Now</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- View More Modal -->
  <div id="loginModal" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('loginModal').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Login</h2>
      </header>
      <form:form action='/CheckLoginUser' method='post' modelAttribute="user">
      <div class="w3-container">
        <p><label><i class="fa fa-user" aria-hidden="true"></i> Phone</label></p>
        <form:input class="w3-input w3-border" name='phone' placeholder="Enter Phone?" path="phone"/>
        
        <p><label><i class="fa fa-lock" aria-hidden="true"></i> Password</label></p>
        <form:password class="w3-input w3-border" placeholder="Enter Password?" path="password"/>
        <input class="w3-button w3-block w3-teal w3-padding-16 w3-section w3-right" type='Submit'>
      </div>
      </form:form>
    </div>
  </div>

  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
    <h2 class="w3-wide w3-center">CONTACT</h2>
    <p class="w3-opacity w3-center"><i>Fan? Drop a note!</i></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px"></i> Gwalior, INDIA<br>
        <i class="fa fa-phone" style="width:30px"></i> Phone: +91 7000245660, 8839950173<br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: deepaky802@gmail.com<br>
      </div>
      <div class="w3-col m6">
        <form action="/action_page.php" target="_blank">
          <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
            </div>
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Email" required name="Email">
            </div>
          </div>
          <input class="w3-input w3-border" type="text" placeholder="Message" required name="Message">
          <button class="w3-button w3-black w3-section w3-right" type="submit">SEND</button>
        </form>
      </div>
    </div>
  </div>
  
<!-- End Page Content -->
</div>

<!-- Image of location/map -->
<img src="/images/mpctmap.png" class="w3-image w3-greyscale-min" style="width:100%">

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p class="w3-medium">Brought To You By <a href="http://www.mpct.org" target="_blank">MPCT.org</a></p>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>


<div id="Video" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('Video').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="fa fa-video-camera w3-margin-right"></i>Video</h2>
        <embed src="/images/bloodprocess.mp4" class="w3-round w3-margin-bottom" style="width:auto; height: 100hv">
      </header>
     </div>
  </div>



</body>

</html>

