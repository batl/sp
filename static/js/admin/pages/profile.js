var entry = 'user';

$(document).ready( function($){
		
	$('input[type=text][language!=no], div.textarea').hide();
		
	$('input[type=text][language='+language_id+'], div.textarea[language='+language_id+']').show();
	
	$('.pagination').hide();
	
	tiny_init();	
			
	image_upload(entry);
	
	$('#cpassword').bind("focus", focus_input);
	$('#password').bind("focus", focus_input);		
	
	$('#sub-nav-profile ul li a').click(function()
	{				
		if (!$(this).hasClass('selected'))
		{
			$('#sub-nav-profile ul li a').removeClass('selected');
			$(this).addClass('selected');
			
			var URL = base_url 	+ "profile/page";
			
			$('#content-container').html('<div class="world_preloader"></div>');
									
			$.post(URL, {"page":$(this).attr('id')}, function(data)
			{          
				$('#content-container').html(data.response);
				
				image_upload(entry);
				
				$('input[type=text][language!=no], div.textarea').hide();
		
				$('input[type=text][language='+language_id+'], div.textarea[language='+language_id+']').show();
				
				tiny_init();
				
			},"json");
											
		}
	});		
	
	$('#main_save').live('click',function(){
		
		save_entry($('#content-container'), entry, $('input[name=id]').val(), true);
				
	});
	
	$('#change_pass_save').live('click',function(){
		var status = true;
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
		if ($('#password').val() != $('#cpassword').val())
		{
			$('#password').css("background-color","#fcecec");
			$('#cpassword').css("background-color","#fcecec");
			status = false;
		}
		if (status)
		{
			save_entry($('#content-container'), entry, $('input[name=id]').val(), true);
		}
	});		
	
});
