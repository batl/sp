var entry = 'goods';

$(document).ready(function(){				
	
	var block = $('#items');
	
	limit = 12;
	
	get_items(block, entry, 0, 'id', 'asc');
	
	$('#sub-nav a').click(function(){
		$('select.groups').addClass('hidden');
		$('select[rel='+$(this).attr('id')+']').removeClass('hidden');
	});
		
});