var entry = 'news';

$(document).ready(function(){				
	
	var block = $('#items');
	
	get_items(block, entry, 0, 'date', 'desc');
	
	$(document).ready(function() {
		$('#s1, #s2').cycle({
			fx: 'fade'
		});
	});
		
});