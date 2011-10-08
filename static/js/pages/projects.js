var entry = 'projects';

$(document).ready(function(){
	
	var block = $('.items');
	
	get_items(block, entry, 0, 'id', 'asc');
	
	$('#calendar th a').live('click', function(event){
		
		event.preventDefault();
		
		var URL = $(this).attr('href');
		
		$.post(URL, {}, function(data)
		{
			
			$('#calendar').html(data.responce);
			
		},"json");
	});
	
	$('#calendar td a').live('click', function(event){
		
		event.preventDefault();								
		
		$('#sub-hdr h3').html($(this).html()+' '+$('th[colspan=5]').attr('padej')+' '+$('th[colspan=5]').html().split('&nbsp;')[1]);
		
		get_items(block, $(this).attr('href'), 0, 'id', 'asc');
		
	});
	
	$('th[colspan=5]').live('click', function(){
		
		$('#sub-hdr h3').html($(this).html());
						
		get_items(block, 'projects/'+$(this).html().split('&nbsp;')[1]+'/'+$(this).attr('slug')+'/no', 0, 'id', 'asc');
		
	});
	
	$('.save_entry').live('click', function(){				
						
		save_entry($('#content-container'), 'project', $('input[name=id]').val());
		
	});
	
	$('.edit_item').live('click', function(){
		
		var id = $(this).attr('id');				
		
		get_view($('#content-container'), 'project', 'edit', id);
		
	});
	
	$('.remove_item').live('click', function(){
		
		var id = $(this).attr('id');												
		
		remove_entry($('#content-container'), 'project', id);
		
	});
	
	$('.projects_stages').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html()+" "+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'moreproject_'+id;
		
		get_items($('#content-container'),entry, 0, 'id', 'asc');
		
	});
	
	$('.stage_partners').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html());				
		
		entry = 'joins_'+$(this).attr('id')+'-'+id+'-type';
		
		get_items($('#content-container'),entry, 0, 'id', 'asc');
		
	});
	
	$('.stage_action').live('click', function (){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html());				
		
		entry = 'joins_'+$(this).attr('id')+'-'+id;
		
		get_items($('#content-container'),entry, 0, 'id', 'asc');
		
	});
	
});