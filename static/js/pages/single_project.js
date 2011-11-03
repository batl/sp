var entry = 'news/0/' + project_id;

$(document).ready(function(){
			
	var block = $('#items');
	
	sort = 'date';
	
	sort_type = 'desc';
	
	get_items(block, entry, 0, sort, sort_type, undefined, function(data){ if (!data.result) $('#news-container').remove();});
	
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
	
	$('.b-menu__item a').css({'color':$('#menu_font').html()});
	$('.b-block__accent p').css({'color':$('#purpose_color').html()});
	
	$('#project_banner').click(function(){
		$('#about').click();
	});
	
	$('.b-menu__layout-l a, .b-menu__layout-c a, .b-menu__layout-r a').live('click', function(){
		
		var URL = base_url + 'project/page/' + $(this).attr('id');								
		
		var ths = $(this);
		
		if ($(this).attr('id') == 'map')
		{
			if ($('input[name=map]').val() == '') $('#map_canvas').css({'height':'50px'}); else $('#map_canvas').css({'height':'300px'});
			$('#news-container, .b-sub-header').slideUp('slow');
			$('#single_content').slideUp('slow',function(){$('#map_canvas').slideDown('slow')});
			
		} 
		else
		{
			$('#single_content').slideUp('slow');
			$('#map_canvas').slideUp('slow', function(){
				$('#single_content').slideDown('slow', function(){
					if (ths.attr('id') == 'about') $('#news-container, .b-sub-header').slideDown('slow'); else $('#news-container, .b-sub-header').slideUp('slow');
				});
			});
			
			
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