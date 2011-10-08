var entry = 'user';

$(document).ready( function($){
		
	var URL = base_url 	+ "profile/page";
	
	$.post(URL, {"page":"main_view"}, function(data)
	{          
		$('.items').html(data.response);
		
		$('.add_item').hide();
		
		if ($('#foto').length) image_upload(entry);
		
		$('input[type=text][language!=no], div.textarea').hide();

		$('input[type=text][language='+language_id+'], div.textarea[language='+language_id+']').show();
		
		if ($('textarea').length) tiny_init();
		
	},"json");
	
	$('#cpassword').bind("focus", focus_input);
	$('#password').bind("focus", focus_input);		
	
	$('#sub-nav-profile ul li a').click(function()
	{				
		
		$('#sub-nav-profile ul li a').removeClass('selected');
		$(this).addClass('selected');
		
		var URL = base_url 	+ "profile/page";
		
		$('.section_title').html($(this).html());
		
		$('.items').html('<div class="world_preloader"></div>');
		
		$('.history').remove();
		story = new Array();
		titles = new Array();
		
		if ($(this).attr('id') == 'projects')
		{
			entry = 'project'; 
			$('.add_item').show();
			
			if (parseInt($('.total :last').html()) > 1) $('#paging').show(); else $('#paging').hide();
			
			story.push('items-'+entry);
			titles.push($('#sub-hdr h3').html());
		}
		else 
		{
			entry = 'user';
			$('#paging, .add_item').hide();
		}
		
		var page = $(this).attr('id');
		
		$.post(URL, {"page":page}, function(data)
		{          
			$('.items').html(data.response);								
						
			if ($('#foto').length) image_upload(entry);
			
			$('input[type=text][language!=no], div.textarea').hide();
	
			$('input[type=text][language='+language_id+'], div.textarea[language='+language_id+']').show();
			
			if ($('textarea').length) tiny_init();
			
		},"json");										
		
	});		
	
	$('#main_save').live('click',function(){
		
		save_entry($('.items'), entry, $('input[name=id]').val(), true);
				
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
			save_entry($('.items'), entry, $('input[name=id]').val(), true);
		}
	});
	
	$('.save_entry').live('click', function(){				
						
		save_entry($('.items'), entry, $('input[name=id]').val());
		
	});
	
	$('.add_item').live('click', function(){
	
		get_view($('.items'), entry, 'add', 0);
		
	});
	
	$('.edit_item').live('click', function(){
		
		var id = $(this).attr('id');
		
		get_view($('.items'), entry, 'edit', id);
		
	});
	
	$('.remove_item').live('click', function(){
		
		var id = $(this).attr('id');												
		
		remove_entry($('.items'), entry, id);
		
	});
	
	$('.projects_stages').live('click', function(){
		
		var id = $(this).attr('id');
		
		$('.section_title').html($(this).html()+" "+$(this).parents('.project-item-content').find('.single').html());
		
		entry = 'moreproject/'+id;
		
		get_items($('.items'),entry, 0, 'id', 'asc');
		
	});
	
	$('.stage_partners').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('section_title').html($(this).html());
		
		entry = 'joins/'+$(this).attr('id')+'/'+id+'/type';
		
		get_items($('.items'),entry, 0, 'id', 'asc');
		
	});
	
	$('.stage_action').live('click', function (){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('section_title').html($(this).html());				
		
		entry = 'joins/'+$(this).attr('id')+'/'+id;
		
		get_items($('.items'),entry, 0, 'id', 'asc');
		
	});
	
});
