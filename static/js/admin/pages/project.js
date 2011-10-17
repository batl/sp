var entry = 'project';

$(document).ready(function(){				
	
	var block = $('.items');
	
	get_items(block,entry, 0, 'id', 'asc');
	
	$('.add_item').click(function(){
	
		get_view(block, entry, 'add', 0);
		
	});
	
	$('.save_entry').live('click', function(){				
						
		save_entry(block, entry, $('input[name=id]').val());
		
	});
	
	$('.edit_item').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();				
		
		get_view(block, entry, 'edit', id);
		
	});
	
	$('.remove_item').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();								
		
		remove_entry(block, entry, id);
		
	});
	
	$('.projects_stages').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html()+" "+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'moreproject_'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	$('.projects_news').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html()+" "+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'news_'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	$('.projects_polls').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html()+" "+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'poll_'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	$('.poll_answers').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).parents('tr').find('td').eq(1).html());
		
		entry = 'pollanswers_'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});	
	
	$('.stage_partners').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html());				
		
		entry = 'joins_'+$(this).attr('id')+'-'+id+'-type';
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	$('.stage_action').live('click', function (){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html());				
		
		entry = 'joins_'+$(this).attr('id')+'-'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	init_modal_window('category_modal_form', 'group_projects', function(response){
		$('select[name=category_id]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=category_id] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('scope_modal_form', 'group_scopes', function(response){
		$('select[name=scope]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=scope] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('place_modal_form', 'dictionary', function(response){
		$('select[name=place]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=place] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	$("#create_category").live('click', function(){				
			$("#category_modal_form").dialog( "open" );
	});	
	
	$("#create_place").live('click', function(){				
			$("#place_modal_form").dialog( "open" );
	});
	
	$("#create_scope").live('click', function(){				
			$("#scope_modal_form").dialog( "open" );
	});
});