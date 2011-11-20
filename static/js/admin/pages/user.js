var entry = 'user';

$(document).ready(function(){				
	
	var block = $('.items');
	
	get_items(block, entry, 0, 'id', 'asc');
	
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
		
		if (entry.indexOf('trash')>=0 || entry.indexOf('group')>=0) action = undefined;
		
		remove_entry(block, entry, id, action);
		
	});			

	$('.confirm_user').live('click', function(){				
		
		var ths = $(this);
		
		var id = $(this).parents('tr').find('td:first').html();				
		
		var URL = base_url+'main/confirm_user';
					
		$.post(URL, {"id":id}, function(response)
		{          
			
			var page  = parseInt($('.curent_page span').html());
			var start = (page-1)*limit;
			get_items(block, entry, start, sort, sort_type, true);
			
			$('.message').html(response.message).show();
				setTimeout(function(){
					$('.message').fadeOut('fast');
				},3000);
			
		},"json");
		
	});
	
	
	init_modal_window('modal_form', 'group', function(response){
		$('select[name=group_id]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=group_id] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});	

	$("#create").live('click', function(){				
			$("#modal_form").dialog( "open" );
	});


});