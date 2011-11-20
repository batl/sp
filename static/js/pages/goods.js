var entry = 'goods';

$(document).ready(function(){				
	
	var block = $('#items');
	
	limit = 12;
	
	get_items(block, entry, 0, 'id', 'asc');
	
	$('#sub-nav a').click(function(){		
		$('#filters').find('span[rel='+entry+']').removeClass('hidden');
		$('#filters').find('span[rel!='+entry+']').addClass('hidden');			
	});
		
});