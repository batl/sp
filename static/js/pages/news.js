var entry = 'news';

$(document).ready(function(){				
	
	var block = $('#items');
	
	sort = 'date';
	
	sort_type = 'desc';
	
	get_items(block, entry, 0, sort, sort_type);
	
	$(document).ready(function() {
		$('#s1, #s2').cycle({
			fx: 'fade'
		});
	});
		
});