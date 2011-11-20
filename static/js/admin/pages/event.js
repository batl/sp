var entry = 'event';

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
	
	$('.recover_item').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();				
		
		recover_entry(block, entry, id);
		
	});
	
	$('.remove_item').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();								
		
		var action = true;
		
		if (entry.indexOf('trash')>=0 || entry.indexOf('organizations')>=0 || entry.indexOf('methods')>=0 || entry.indexOf('group')>=0) action = undefined;
		
		remove_entry(block, entry, id, action);
		
	});
	
	$('.event_action').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();	
		
		$('#content h2:first').html($(this).html()+' '+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'joins_'+$(this).attr('id')+'-'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
	init_modal_window('type_modal_form', 'group_events', function(response){
		$('select[name=type]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=type] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});	
	
	init_modal_window('place_modal_form', 'dictionary', function(response){
		$('select[name=place]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=place] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('method_modal_form', 'dictionary_methods', function(response){
		$('select[name=methods_id]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=methods_id] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('scope_modal_form', 'group_scopes', function(response){
		$('select[name=scope]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=scope] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	init_modal_window('place_type_modal_form', 'group_places', function(response){
		$('select[name=place_type]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=place_type] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	$("#create_type").live('click', function(){				
		$("#type_modal_form").dialog( "open" );
	});	
	
	$("#create_place").live('click', function(){				
		$("#place_modal_form").dialog( "open" );
	});
	
	$("#create_method").live('click', function(){				
		$("#method_modal_form").dialog( "open" );
	});
	
	$("#create_scope").live('click', function(){				
		$("#scope_modal_form").dialog( "open" );
	});
	
	$("#create_place_type").live('click', function(){				
		$("#place_type_modal_form").dialog( "open" );
	});	
		
});