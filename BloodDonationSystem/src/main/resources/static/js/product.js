$(document).ready(function(){
	$.get("/ProductList",function(data){
		  
		    $('#productid').append($('<option>').text('-Product-'))
	   $.each(data,function(i,item){
		 $('#productid').append($('<option>').text(item.name).val(item.productid))  
	   })	  
	   })
	
	$("#productid").change(function(){
		 
		$.get("/SearchByProductId",{ajax:true,productid:$('#productid').val()},function(data){
			
		 $('#result').html("<font color='green'><b>Current Stock:"+data[0].stock+"<b></font>")	
			
		})
		
		
	})
	
})


/**
 * 
 */