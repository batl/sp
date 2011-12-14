var entry = 'project'; // Set current entry value

$(document).ready(function(){				
	
	// Page load	
	
	var block = $('.items');
	
	get_items(block,entry, 0, 'id', 'asc');
	
	// Add new project click
	
	$('.add_item').click(function(){
	
		get_view(block, entry, 'add', 0);
		
	});
	
	$('input[name=slug]').live('change', function(){
		
		var ths = $(this);
		
		var URL = base_url + 'project/check_slug';				
		
		$.post(URL, {'slug':ths.val()}, function(data)
		{
			if (data.result) ths.css({'background':'#349788'}); else ths.css({'background':'#FCECEC'});
			
			$('.message').html(data.response).show();
				setTimeout(function(){
					$('.message').fadeOut('fast');
				},3000);									
			
		},'json');
		
	});
	
	// Save project updates
	
	$('.save_entry').live('click', function(){											
		
		if ($('input[name=slug]').length && $('input[name=id]').val() == '0')
		{
			var URL = base_url + 'project/check_slug';				
			
			$.post(URL, {'slug':$('input[name=slug]').val()}, function(data)
			{
				if (data.result && $('input[name=slug]').val() != "")
				{
					var reload;
							
					(entry.split('_')[0] == 'moreproject') ? reload = true: reload = undefined;				
					
					save_entry(block, entry, $('input[name=id]').val(), reload);
					
				}
				else
				{
					$('.message').html(data.response).show();
						setTimeout(function(){
							$('.message').fadeOut('fast');
						},3000);
						
					$.scrollTo({top:'0px', left:'0px'}, 800);
				}
				
			},'json');				
		}
		else
		{
			save_entry(block, entry, $('input[name=id]').val());
		}
		
	});
	
	// Get project edit view
	
	$('.edit_item').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();								
		
		get_view(block, entry, 'edit', id);
		
	});
	
	$('.recover_item').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();				
		
		recover_entry(block, entry, id);
		
	});
	
	// Remove project
	
	$('.remove_item').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();								
		
		var action = true;
		
		if (entry.indexOf('trash')>=0 || entry.indexOf('group')>=0 || entry.indexOf('news')>=0 || entry.indexOf('anonses')>=0 || entry.indexOf('joins')>=0 || entry.indexOf('poll')>=0 || entry.indexOf('comments')>=0) action = undefined;
		
		remove_entry(block, entry, id, action);
		
	});
	
	// Moderate comment
	
	$('.moderate_item').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();												
		
		moderate_entry(block, entry, id);
		
	});
	
	
	$('.event_action').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();	
		
		$('#content h2:first').html($(this).html()+' '+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'joins_'+$(this).attr('id')+'-'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	// View project stages
	
	$('.project_more').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html()+" "+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'moreproject_'+id;
		
		get_view(block, entry, 'edit', id, true);
		
	});
	
	// View project news
	
	$('.projects_news').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html()+" "+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'news_'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	// View project events
	
	$('.projects_events').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html()+" "+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'event_'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	// View project anonses
	
	$('.projects_anonses').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html()+" "+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'anonses_'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	// View project polls
	
	$('.projects_polls').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html()+" "+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'poll_'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	// View poll answers
	
	$('.poll_answers').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).parents('tr').find('td').eq(2).html());
		
		entry = 'pollanswers_'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});	
	
	// View project comments
	
	$('.projects_comments').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).parents('tr').find('td').eq(2).html());
		
		entry = 'comments_'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});	
	
	// View project stage partners
	
	$('.stage_partners').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html());				
		
		entry = 'joins_'+$(this).attr('id')+'-'+id+'-type';
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	// View project stage joins (such as photo, video, ...)
	
	$('.stage_action').live('click', function (){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html());				
		
		entry = 'joins_'+$(this).attr('id')+'-'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	/* Init modal forms for rojects and ideas*/
	
	init_modal_window('category_modal_form', 'group_projects', function(response){
	
		$('div.array[name=category_id]').append(
			'<br/>' +
			'<span class="check_item">'+response.entry.name+'</span>' +
			'<input type="checkbox" checked="checked" value="'+response.entry.id+'" rel="array">'
		);
		
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
	
		$( "#dialog-modal" ).dialog({
			height: 140,
			modal: true
		});
		
		$('#dialog-modal p').html(response.message);
			
		setTimeout(function(){
			$( "#dialog-modal" ).dialog("close");
		},1000);
		
		$('#category_modal_form input').val('');
	});
	
	init_modal_window('idea_category_modal_form', 'group_ideas', function(response){
	
		$('div.array[name=category_ids]').append(
			'<br/>' +
			'<span class="check_item">'+response.entry.name+'</span>' +
			'<input type="checkbox" checked="checked" value="'+response.entry.id+'" rel="array">'
		);
		
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
	
		$( "#dialog-modal" ).dialog({
			height: 140,
			modal: true
		});
		
		$('#dialog-modal p').html(response.message);
			
		setTimeout(function(){
			$( "#dialog-modal" ).dialog("close");
		},1000);
		
		$('#idea_category_modal_form input').val('');
	});
	
	init_modal_window('territory_modal_form', 'group_territories', function(response){		
		
		$('div.array[name=territory]').append(
			'<br/>' +
			'<span class="check_item">'+response.entry.name+'</span>' +
			'<input type="checkbox" checked="checked" value="'+response.entry.id+'" rel="array">'
		);
		
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
	
		$( "#dialog-modal" ).dialog({
			height: 140,
			modal: true
		});
		
		$('#dialog-modal p').html(response.message);
			
		setTimeout(function(){
			$( "#dialog-modal" ).dialog("close");
		},1000);
		
		$('#place_modal_form input').val('');
	});
	
	init_modal_window('place_type_modal_form', 'group_places', function(response){
		$('select[name=place_type]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=place_type] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
		
	});
	
	init_modal_window('place_modal_form', 'dictionary', function(response){
	
		$('div.array[name=place]').append(
			'<br/>' +
			'<span class="check_item">'+response.entry.name+'</span>' +
			'<input type="checkbox" checked="checked" value="'+response.entry.id+'" rel="array">'
		);
		
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
	
		$( "#dialog-modal" ).dialog({
			height: 140,
			modal: true
		});
		
		$('#dialog-modal p').html(response.message);
			
		setTimeout(function(){
			$( "#dialog-modal" ).dialog("close");
		},1000);
		
		$('#place_modal_form input').val('');
	});		
	
	init_modal_window('organization_modal_form', 'dictionary_organizations', function(response){
		$('select[name=supplier]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=supplier] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
		
		$('div.array[name=initiator], div.array[name=organizer]').append(
			'<br/>' +
			'<span class="check_item">'+response.entry.name+'</span>' +
			'<input type="checkbox" checked="checked" value="'+response.entry.id+'" rel="array">'
		);
		
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
	
		$( "#dialog-modal" ).dialog({
			height: 140,
			modal: true
		});
		
		$('#dialog-modal p').html(response.message);
			
		setTimeout(function(){
			$( "#dialog-modal" ).dialog("close");
		},1000);
		
		$('#organization_modal_form input').val('');
		
	});
	
	init_modal_window('scope_modal_form', 'group_scopes', function(response){
		
		$('div.array[name=scope]').append(
			'<br/>' +
			'<span class="check_item">'+response.entry.name+'</span>' +
			'<input type="checkbox" checked="checked" value="'+response.entry.id+'" rel="array">'
		);
		
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
	
		$( "#dialog-modal" ).dialog({
			height: 140,
			modal: true
		});
		
		$('#dialog-modal p').html(response.message);
			
		setTimeout(function(){
			$( "#dialog-modal" ).dialog("close");
		},1000);
		
		$('#scope_modal_form input').val('');
	});
	
	init_modal_window('activity_modal_form', 'group_activities', function(response){
		
		$('div.array[name=activities]').append(
			'<br/>' +
			'<span class="check_item">'+response.entry.name+'</span>' +
			'<input type="checkbox" checked="checked" value="'+response.entry.id+'" rel="array">'
		);
		
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
	
		$( "#dialog-modal" ).dialog({
			height: 140,
			modal: true
		});
		
		$('#dialog-modal p').html(response.message);
			
		setTimeout(function(){
			$( "#dialog-modal" ).dialog("close");
		},1000);
		
		$('#activity_modal_form input').val('');
	});
	
	$("#create_category").live('click', function(){				
		$("#category_modal_form").dialog( "open" );
	});
	
	$("#create_idea_category").live('click', function(){				
		$("#idea_category_modal_form").dialog( "open" );
	});	
	
	$("#create_place").live('click', function(){				
		$("#place_modal_form").dialog( "open" );
	});
	
	$("#create_scope").live('click', function(){				
		$("#scope_modal_form").dialog( "open" );
	});	
	
	$("#create_activity").live('click', function(){				
		$("#activity_modal_form").dialog( "open" );
	});
	
	$("#create_territory").live('click', function(){				
		$("#territory_modal_form").dialog( "open" );
	});
	
	$("#create_place_type").live('click', function(){				
		$("#place_type_modal_form").dialog( "open" );
	});
	
	$("#create_organizator, #create_initiator").live('click', function(){				
		$("#organization_modal_form").dialog( "open" );
	});
	
	/* End init modal forms for projects and ideas*/	
	
	$('.project_bg').live('click', function(){
		$('input[name=bg_image]').val($(this).attr('rel'));
		$('#project_bg_preview').css({'background':'url("'+front_url+'static/images/background/'+$(this).attr('rel')+'")'});
	});
		
});