var entry = 'news/0/' + project_id;

$(document).ready(function(){
			
	var block = $('#items');
	
	sort = 'date';
	
	sort_type = 'desc';
	
	get_items(block, entry, 0, sort, sort_type);
	
	if ($('input[name=map]').val() != '')
	{
		$('#map_canvas').show('fast', function (){
			var map = new GMap2(document.getElementById("map_canvas"));		
			map.setCenter(new GLatLng(parseFloat($('input[name=map]').val().split('-')[1]), parseFloat($('input[name=map]').val().split('-')[0])), 13);					
			map.setUIToDefault();			
			var marker;			
			marker = new GMarker(new GLatLng(parseFloat($('input[name=map]').val().split('-')[1]), parseFloat($('input[name=map]').val().split('-')[0])));			
			marker.openInfoWindowHtml($('input[name=map_description]').val());			
			map.addOverlay(marker);																	
			$('#map_canvas').hide('fast');
		});

	}		
	
	$('.b-menu__layout-l a, .b-menu__layout-c a, .b-menu__layout-r a').live('click', function(){
		
		var URL = base_url + 'project/page/' + $(this).attr('id');				
		
		if ($(this).attr('id') == 'about') $('#news-container').show('slow'); else $('#news-container').hide('slow');
		
		if ($(this).attr('id') == 'map')
		{
			if ($('input[name=map]').val() == '') $('#map_canvas').css({'height':'50px'}); else $('#map_canvas').css({'height':'300px'});
			$('#single_content').hide('slow');	
			$('#map_canvas').show('slow');
		} 
		else
		{
			$('#map_canvas').hide('slow');
			$('#single_content').show('slow');
			
			$('#single_content').find('h3').html($(this).html());				
		
			$.post(URL, {}, function(data)
			{          
				
				$('#dealer-content').html(data.response);																										
				
				if ($("a.lightbox").length) $("a.lightbox").lightBox();
				
			},"json");
		}
		
		$('.b-menu__item a').removeClass('selected');
		
		$(this).addClass('selected');				
		
	});	
	
	$('.switcher').live('click', function(){
		
		if ($(this).hasClass('show_switcher')) $(this).removeClass('show_switcher').addClass('hide_switcher'); else $(this).removeClass('hide_switcher').addClass('show_switcher');
		
		$(this).parents('.switcher_parent').find('.switcher_content').slideToggle('slow');
		
	});
	
});