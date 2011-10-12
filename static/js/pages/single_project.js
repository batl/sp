var entry = 'news/0/' + project_id;

$(document).ready(function(){
			
	var block = $('#items');
	
	sort = 'date';
	
	sort_type = 'desc';
	
	get_items(block, entry, 0, sort, sort_type);
	
	$('.b-menu__layout-l a, .b-menu__layout-c a').live('click', function(){
		
		var URL = base_url + 'project/page/' + $(this).attr('id');				
		
		$('.b-menu__item a').removeClass('selected');
		
		$(this).addClass('selected');
		
		$.post(URL, {}, function(data)
		{          
			
			$('#dealer-content').html(data.response);																				
			
			if ($("a.lightbox").length) $("a.lightbox").lightBox();
			
		},"json");										
		
	});	
	
});