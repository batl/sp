var entry = 'news/0/' + project_id;

$(document).ready(function(){
			
	var block = $('#items');
	
	sort = 'date';
	
	sort_type = 'desc';
	
	get_items(block, entry, 0, sort, sort_type, undefined, function(data){ if (!data.result) $('#news-container').remove(); else $('#news-container').show(); $('#photos-container').show();});
	
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
		$('#home').click();
	});
	
	$('#all_photos').click(function(){
		$('#photoreport').click();
	});		
	
	$('.b-menu__layout-l a, .b-menu__layout-c a, .b-menu__layout-r a').live('click', function(){
		
		var URL = base_url + 'project/page/' + $(this).attr('id');								
		
		var ths = $(this);
		
		if ($(this).attr('id') == 'map')
		{
			if ($('input[name=map]').val() == '') $('#map_canvas').css({'height':'50px'}); else $('#map_canvas').css({'height':'300px'});
			$('#news-container, #poll-container, #photos-container, .b-sub-header').hide();
			$('#single_content').hide('fast',function(){$('#map_canvas').show('fast')});
			
		} 
		else
		{
			$('#single_content').slideUp('fast');
			$('#map_canvas').slideUp('fast', function(){
				$('#single_content').slideDown('fast', function(){
					if (ths.attr('id') == 'home') $('#news-container, #photos-container, #poll-container, .b-sub-header').show(); else $('#news-container, #photos-container, #poll-container, .b-sub-header').hide();
				});
			});
			
			
			$('#single_content').find('h3').html($(this).html());				
		
			$.post(URL, {}, function(data)
			{          
				
				$('#single_content').html(data.response);																										
				
				if ($("a.lightbox").length) $("a.lightbox").lightBox();
				
				if ($('#single_content').find('.p_comments').length)
				{
					//2696942
					VK.init({apiId: 2696932, onlyWidgets: true});
					$('#single_content').find('.p_comments').each(function(){
						VK.Widgets.Comments($(this).attr('id'), {limit: 5}, $(this).attr('id'));				
					});								
				}
				
			},"json");
		}
		
		$('.b-menu__item a').removeClass('selected');
		
		$(this).addClass('selected');				
		
	});	
	
	$('#home').trigger('click');
	
	$('.switcher').live('click', function(){
		
		if ($(this).hasClass('show_switcher')) $(this).removeClass('show_switcher').addClass('hide_switcher'); else $(this).removeClass('hide_switcher').addClass('show_switcher');
		
		$(this).parents('.switcher_parent').find('.switcher_content').slideToggle('slow');
		
	});
		
	$('span.single_view').live('click', function(event){
		event.preventDefault();		
		$('#single_view').attr('title', '');
		var title = $(this).html();		
		var block = $('#single_view');
		entry = $(this).attr('id');
		get_items(block, entry, 0, 'id', 'asc', 'ignore', function(response){
			$('#dialog:ui-dialog').dialog( "destroy" );
			$('#single_view').attr('title', title);
			$('#single_view').dialog({
				modal: true,
				buttons: {
					Close: function() {
						$( this ).dialog( "close" );
					}
				}
			});
		});
	});
});