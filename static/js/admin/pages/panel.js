$(document).ready(function(){						
	
	/*var URL = base_url + 'main/get_last_comments';
	
	$('#comments_content').html('<div class="world_preloader"></div>');
			
	$('.world_preloader').show();		
	
	$.post(URL, {}, function(response)
	{
		$('.world_preloader').hide();
		
		$('#comments_content').html(response.html);
		
		$('.single_comment').hover(function(){
			$(this).find('.comments_actions').show();
		}, function(){
			$(this).find('.comments_actions').hide();
		});
		
	},"json");*/
	
	var URL = base_url + 'main/get_last_ideas';
	
	$('#ideas_content').html('<div class="world_preloader"></div>');
			
	$('.world_preloader').show();		
	
	$.post(URL, {}, function(response)
	{
		$('.world_preloader').hide();
		
		$('#ideas_content').html(response.html);
		
		$('.single_idea').hover(function(){
			$(this).find('.idea_actions').show();
		}, function(){
			$(this).find('.idea_actions').hide();
		});
		
	},"json");
	
	// Moderate comment
	
	$('.moderate_comment, .moderate_idea').live('click', function(){
		
		var ths = $(this);
		var id = $(this).parents('div[rel]').attr('id');
		var action = 'comments';
		
		
		if ($(this).hasClass('moderate_idea')) action = 'idea';
		
		moderate_entry(false, action, id, function(response){
			
			$( "#dialog:ui-dialog" ).dialog( "destroy" );
		
			$( "#dialog-modal" ).dialog({
				height: 140,
				modal: true
			});
			
			$('#dialog-modal p').html(response.message);
			
			if (parseInt(ths.parents('div[rel]').attr('rel'))) 
			{
				ths.parents('div[rel]').attr('rel','0');
				ths.parents('div[rel]').css({'background':'red'});
			}
			else
			{
				ths.parents('div[rel]').attr('rel','1');
				ths.parents('div[rel]').css({'background':'green'});
			}
			
			setTimeout(function(){
				$( "#dialog-modal" ).dialog("close");
			},1000);
			
		});		
	});
	
	$('.remove_comment, .remove_idea').live('click', function(){
		
		var ths = $(this);
		var action = 'comments';
		
		if ($(this).hasClass('remove_idea')) action = 'idea';
		
		$( "#dialog-remove").dialog({
		resizable: false,
		height:140,
		modal: true,
		buttons: {
				"Yes": function() {
					
					var id = ths.parents('div[rel]').attr('id');
					
					var URL = base_url + action + '/remove_entry';
							
					$.post(URL, {"id":id}, function(response)
					{
					
						$( "#dialog:ui-dialog" ).dialog( "destroy" );
					
						$( "#dialog-modal" ).dialog({
							height: 140,
							modal: true
						});
						
						$('#dialog-modal p').html(response.message);												
							
						setTimeout(function(){
							$( "#dialog-modal" ).dialog("close");
						},1000);
						
						var URL = base_url + 'main/get_last_comments';
						
						if (action == 'idea') URL = base_url + 'main/get_last_ideas';
	
						if (action == 'idea') 
							$('#ideas_content').html('<div class="world_preloader"></div>');
						else
							$('#comments_content').html('<div class="world_preloader"></div>');
								
						$('.world_preloader').show();		
						
						$.post(URL, {}, function(response)
						{
							$('.world_preloader').hide();
							
							if (action == 'idea') 
							{
								$('#ideas_content').html(response.html);
								$('.single_idea').hover(function(){
									$(this).find('.idea_actions').show();
								}, function(){
									$(this).find('.idea_actions').hide();
								});

							}
							else
							{
								$('#comments_content').html(response.html);
								$('.single_comment').hover(function(){
									$(this).find('.comments_actions').show();
								}, function(){
									$(this).find('.comments_actions').hide();
								});
							}																					
							
						},"json");
						
					},"json");										
					
					$( this ).dialog( "close" );
					
				},
				Cancel: function() {
					$( this ).dialog( "close" );
				}
			}
		});
	});
	
});