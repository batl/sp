var entry = 'news';

$(document).ready(function(){				
	
	var block = $('#items');
	
	get_items(block, entry, 0, 'date', 'desc');
		
});