var entry = 'page';

$(document).ready(function(){				
	
	var block = $('.items');
	
	sort = 'weight';
	
	get_items(block,entry, 0, sort, 'asc');
	
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
		
		var action = 'trash_entry';
		
		if (entry.indexOf('trash')>=0) action = 'remove_entry';
		
		check_system(block, entry, id, action);
		
	});

});