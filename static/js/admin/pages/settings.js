var entry = 'settings';

$(document).ready( function($){
		
	$('input[type=text][language!=no], input[type=file][language!=no], div.textarea, img[language!=no]').hide();
		
	$('input[type=text][language='+language_id+'], div.textarea[language='+language_id+'], img[language='+language_id+'], input[type=file][language='+language_id+']').show();		
	
	$('input[id^=logo_]').each(function(i){
		image_upload(entry, $(this).attr('id'), 'logo_view_'+i);
	});
	
	image_upload(entry, 'background', 'site_background');
	//image_upload(entry, 'front_banner', 'site_banner');
	//image_upload(entry, 'back_banner', 'admin_banner');
	
	$('.remove').live('click', function(){
		$(this).parents('li').find('img').removeAttr('big').removeAttr('src');
	});
	
	$('#colorSelector').ColorPicker({
		color: '#0000ff',
		onShow: function (colpkr) {
			$(colpkr).fadeIn(500);
			return false;
		},
		onHide: function (colpkr) {
			$(colpkr).fadeOut(500);
			return false;
		},
		onChange: function (hsb, hex, rgb) {
			$('#colorSelector div').css('backgroundColor', '#' + hex);
			$('input[name=bg_color]').val('#' + hex);
		}
	});
	
	$('#cpassword').bind("focus", focus_input);
	$('#password').bind("focus", focus_input);		
	
	$('#settings_menu a').click(function()
	{				
		if (!$(this).hasClass('selected'))
		{
			$('#setting_menu a').removeClass('selected');
			$(this).addClass('selected');
			
			var URL = base_url 	+ "settings/page";
			
			$('.items').html('<div class="world_preloader"></div>');
									
			$.post(URL, {"page":$(this).attr('id')}, function(data)
			{          
				$('.items').html(data.view);
				
				$('input[id^=logo_]').each(function(i){
					image_upload(entry, $(this).attr('id'), 'logo_view_'+i);
				});
				
				image_upload(entry, 'background', 'site_background');				
				//image_upload(entry, 'front_banner', 'site_banner');
				image_upload(entry, 'back_banner', 'admin_banner');
				
				$('input[type=text][language!=no], input[type=file][language!=no], div.textarea, img[language!=no]').hide();
		
				$('input[type=text][language='+language_id+'], div.textarea[language='+language_id+'], img[language='+language_id+'], input[type=file][language='+language_id+']').show();
				
			},"json");
											
		}
	});	

	$('#translates a').live('click', function(){
		
		$('input[type=file][language!=no], img[language!=no]').hide();
		
		$('input[type=file][language='+$(this).attr('id')+'], img[language='+$(this).attr('id')+']').show();
		
	});
	
	$('#main_save').live('click',function(){
		
		save_entry($('.items'), entry, $('input[name=id]').val(), true);
				
	});		
	
});
