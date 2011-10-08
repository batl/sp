$(document).ready( function($){
			
	$('#name').bind("focus", focus_input);
	$('#email').bind("focus", focus_input);
	$('#password').bind("focus", focus_input);
	$('#cpassword').bind("focus", focus_input);
	
	
	$('.button').click(function(){
		var status = true;
		if ($('#name').val() == '') 
		{
			$('#name').css("background-color","#fcecec");
			status = false;
		}
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
		if ($('#cpassword').val() == '') 
		{
			$('#cpassword').css("background-color","#fcecec");
			status = false;
		}
		if (status)
		{
			var URL = base_url + 'main/check_email';
			
			$.post(URL,{'email':$('#email').val()}, function(data)
			{
				if (data.result)
				{
					$('#signup_form').submit();
				}
				else
				{
					$('form').before('<div class="message">'+data.msg+'</div>');
				}
			},'json');
			
		}
	});
	
	
	
});
