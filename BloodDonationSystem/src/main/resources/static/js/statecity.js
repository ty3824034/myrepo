$(document).ready(function(){
	
  $.get("/FetchState",function(data){
	  $('#statename')
	    $('#cityname')
	     $('#hospitalname')
	       $('#bloodtype')
	     
   $.each(data,function(i,item){
	 $('#statename').append($('<option>').text(item.statename))  
	 $('#sstatename').append($('<option>').text(item.statename))
   })	  
   })
   
 $('#statename').change(function(){  
 $('#cityname').empty();
 $('#cityname').append($('<option disabled selected>').text('-City-'))
 
 $.get("/FetchCity",{ajax:true,sn:$('#statename').val()},function(data){	
 $.each(data,function(i,item){
	 $('#cityname').append($('<option>').text(item.cityname))  
	 
 })	
 
 })
})


 $('#sstatename').change(function(){  
 $('#ccityname').empty();
 $('#ccityname').append($('<option disabled selected>').text('-City-'))
 
 $.get("/FetchCity",{ajax:true,sn:$('#sstatename').val()},function(data){	
 $.each(data,function(i,item){
	 $('#ccityname').append($('<option>').text(item.cityname))  
	 
 })	
 
 })
})


$('#cityname').change(function(){  
 $('#hospitalname').empty();
 $('#hospitalname').append($('<option disabled selected>').text('-Hospital-'))
 
 $.get("/FetchHospital",{ajax:true,cn:$('#cityname').val()},function(data){	
 $.each(data,function(i,item){
	 $('#hospitalname').append($('<option>').text(item.hospitalname))  
	 
 })	
   
 
 })
 
 
 })
 
 
 $('#hhospitalname').change(function(){  
 $('#bloodtype').empty();
 $('#bloodtype').append($('<option disabled selected>').text('-Blood-'))
 
 $.get("/FetchBlood",{ajax:true,hn:$('#hhospitalname').val()},function(data){	
 $.each(data,function(i,item){
	 $('#bloodtype').append($('<option>').text(item.bloodtype))  
	 
 })	
 })
 })
 
 
  $('#bloodtype').change(function(){  
 $('#qty').empty();
 
 $.get("/FetchBloodQuantity",{ajax:true,hn:$('#hhospitalname').val(),bt:$('#bloodtype').val()},function(data){	
 $.each(data,function(i,item){
	 qty.innerHTML="<font color='red'><b><i>&nbsp&nbspAvailable:&nbsp"+item.quantity+"ml</i></b></font>"
	
 })	
 })
 })
 
 
 
 $('#ccityname').change(function(){  
 $('#hhospitalname').empty();
 $('#hhospitalname').append($('<option disabled selected>').text('-Hospital-'))
 
 $.get("/FetchHospital",{ajax:true,cn:$('#ccityname').val()},function(data){	
 $.each(data,function(i,item){
	 $('#hhospitalname').append($('<option>').text(item.hospitalname))  
	 
 })	
   
 
 })
 
 
 })
 
 
})

