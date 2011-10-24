var entry = 'user';

$(document).ready( function($){
		
	var URL = base_url 	+ "profile/page";
	
	$('#paging, #limit, .add_item').hide();
	
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
		
		switch ($(this).attr('id'))
		{
			case 'projects':
					entry = 'project';
			
					$('.add_item').show();

					get_items($('.items'), entry, 0, sort, sort_type, 'ignore');						
					
					story.push('items-'+entry);
					
					titles.push($('#sub-hdr h3').html());
					
				break;
				
			case 'events':
					entry = 'event';
			
					$('.add_item').show();

					get_items($('.items'), entry, 0, sort, sort_type, 'ignore');						
					
					story.push('items-'+entry);

					titles.push($('#sub-hdr h3').html());
					
				break;
				
			default:
					entry = 'user';
					
					$('#paging, #limit, .add_item').hide();
						
					var page = $(this).attr('id');
					
					$.post(URL, {"page":page,"limit":limit}, function(data)
					{          
						$('.items').html(data.response);								
									
						if ($('#foto').length) image_upload(entry);
						
						$('input[type=text][language!=no], div.textarea').hide();
				
						$('input[type=text][language='+language_id+'], div.textarea[language='+language_id+']').show();
						
						if ($('textarea').length) tiny_init();
						
					},"json");
					
				break;
			
		}
				
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
		
		$('.section_title').html($(this).html()+" "+$(this).parents('.project-item-content').find('a[target=_blanck]').html());
		
		entry = 'moreproject/'+id;
		
		get_items($('.items'),entry, 0, 'id', 'asc');
		
	});
	
	$('.projects_news').live('click', function(){
		
		var id = $(this).attr('id');					
		
		$('.section_title').html($(this).html()+" "+$(this).parents('.project-item-content').find('a[target=_blanck]').html());
		
		entry = 'news/0/'+id+'/1';
		
		get_items($('.items'),entry, 0, 'id', 'asc');
		
	});
	
	$('.projects_polls').live('click', function(){
		
		var id = $(this).attr('id');
		
		$('.section_title').html($(this).html()+" "+$(this).parents('.project-item-content').find('a[target=_blanck]').html());
		
		entry = 'poll/'+id;
		
		get_items($('.items'),entry, 0, 'id', 'asc');
		
	});
	
	$('.poll_answers').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('.section_title').html($(this).html()+" "+$('.section_title').html());
		
		entry = 'pollanswers/'+id;
		
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
	
	$('.events_actions').live('click', function(){				
		
		$('.section_title').html($(this).html());
		
		entry = 'joins/'+$(this).attr('id');
		
		get_items($('.items'),entry, 0, 'id', 'asc');
		
	});
	
	init_modal_window('category_modal_form', 'dictionary/projects_categories', function(response){
		$('select[name=category_id]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=category_id] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('place_modal_form', 'dictionary/places', function(response){
		$('select[name=place]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=place] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('place_type_modal_form', 'dictionary/places_categories', function(response){
		$('select[name=place_type]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=place_type] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('territory_modal_form', 'dictionary/territories', function(response){
		$('select[name=territory]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=territory] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('method_modal_form', 'dictionary/methods', function(response){
		$('select[name=methods_id]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=methods_id] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('type_modal_form', 'dictionary/events_categories', function(response){
		$('select[name=type]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=type] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('scope_modal_form', 'dictionary/scopes', function(response){
		$('select[name=scope]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=scope] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	$("#create_category").live('click', function(){				
		$("#category_modal_form").dialog( "open" );
	});	
	
	$("#create_place_type").live('click', function(){				
		$("#place_type_modal_form").dialog( "open" );
	});	
	
	$("#create_place").live('click', function(){				
		$("#place_modal_form").dialog( "open" );
	});

	$("#create_territory").live('click', function(){				
		$("#territory_modal_form").dialog( "open" );
	});
	
	$("#create_method").live('click', function(){				
		$("#method_modal_form").dialog( "open" );
	});
	
	$("#create_type").live('click', function(){				
		$("#type_modal_form").dialog( "open" );
	});	
	
	$("#create_scope").live('click', function(){				
		$("#scope_modal_form").dialog( "open" );
	});	
});
