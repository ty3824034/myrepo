$(document).ready(function(){
	$.get("/ListEmployee",function(data){
		  
		    $('#issueto').append($('<option>').text('-Employee-'))
	   $.each(data,function(i,item){
		 $('#issueto').append($('<option>').text(item.name).val(item.id))  
	   })	  
	   })
	
	
	
})

$(document).ready(function(){
	$.get("/ListEmployee",function(data){
		  
		    $('#purchasedby').append($('<option>').text('-Employee-'))
	   $.each(data,function(i,item){
		 $('#purchasedby').append($('<option>').text(item.name).val(item.id))  
	   })	  
	   })
	
	
	
})
/**
 * 
 */