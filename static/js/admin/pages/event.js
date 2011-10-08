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
	
	$('.remove_item').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();								
		
		remove_entry(block, entry, id);
		
	});
	
	$('.event_action').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();	
		
		$('#content h2:first').html($(this).html()+' '+$(this).parents('tr').find('td').eq(1).html());
		
		entry = 'joins_'+$(this).attr('id')+'-'+id;
		
		get_items(block,entry, 0, 'id', 'asc');
		
	});
	
});