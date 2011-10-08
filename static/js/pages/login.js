$(document).ready( function($){
				
	$('#email').bind("focus", focus_input);
	$('#password').bind("focus", focus_input);		
	
	$('#password').keypress(function(event){		
		
		if (event.which == '13') 
		{
			check_login_form();	        
	    }
		
	});
	
	$('.button').click(function(){
		
		check_login_form();	  
		
	});
			
});

function check_login_form()
{
	var status = true;		
	if ($('#email').val() == '')
	{
		$('#email').css("background-color","#fcecec");
		status = false;
	}
	if ($('#password').val() == '') 
	{
		$('#password').css("background-color","#fcecec");
		status = false;
	}		
	if (status)
	{
		var URL = base_url 	+ "login/check_user";
		$.post(URL, {"email":$('#email').val(),"password":$('#password').val()}, function(data)
		{          
			if (data.result)
			{ 
				window.location = base_url + 'profile';
			}
			else
			{					
				$('.message').html(data.message).show();
				setTimeout(function(){
					$('.message').fadeOut('fast');
				},3000);
			}
		},"json");							
	}
}
