var entry = 'goods';

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
	
	$('.remove_item').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();				
		
		remove_entry(block, entry, id);
		
	});
	
	init_modal_window('type_modal_form', 'group_goods', function(response){
		$('select[name=type]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=type] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});
	
	if ($('#organization_foto').length) image_upload('dictionary_organizations', 'organization_foto', 'organization_foto_img');
	
	init_modal_window('organization_modal_form', 'dictionary_organizations', function(response){
		$('select[name=supplier]').append('<option value="'+response.entry.id+'">'+response.entry.name+'</option>');					
		$('select[name=supplier] option').each(function(){
			if (parseInt($(this).val()) != parseInt(response.entry.id)) $(this).attr('selected', ''); else $(this).attr('selected', 'selected');
		});
	});	

	$("#create_type").live('click', function(){				
			$("#type_modal_form").dialog( "open" );
	});
	
	$("#create_organization").live('click', function(){				
			$("#organization_modal_form").dialog( "open" );
	});		
	
});