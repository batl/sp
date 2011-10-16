var entry = 'news/0/' + project_id;

$(document).ready(function(){
			
	var block = $('#items');
	
	sort = 'date';
	
	sort_type = 'desc';
	
	get_items(block, entry, 0, sort, sort_type);
	
	$('.b-menu__layout-l a, .b-menu__layout-c a, .b-menu__layout-r a').live('click', function(){
		
		var URL = base_url + 'project/page/' + $(this).attr('id');				
		
		$('.b-menu__item a').removeClass('selected');
		
		$(this).addClass('selected');
		
		$('#single_content').find('h3').html($(this).html());
		
		$.post(URL, {}, function(data)
		{          
			
			$('#dealer-content').html(data.response);																										
			
			if ($("a.lightbox").length) $("a.lightbox").lightBox();
			
		},"json");										
		
	});	
	
	$('.switcher').live('click', function(){
		
		if ($(this).hasClass('show_switcher')) $(this).removeClass('show_switcher').addClass('hide_switcher'); else $(this).removeClass('hide_switcher').addClass('show_switcher');
		
		$(this).parents('.switcher_parent').find('.switcher_content').slideToggle('slow');
		
	});
	
});