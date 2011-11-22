$(document).ready(function(){						
	
	var URL = base_url + 'main/get_last_comments';
	
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
		
	},"json");
	
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
	
	$('.moderate_comment').live('click', function(){
		
		var ths = $(this);
		var id = $(this).parents('p').attr('id');
		
		moderate_entry(false, 'comments', id, function(response){
			
			$( "#dialog:ui-dialog" ).dialog( "destroy" );
		
			$( "#dialog-modal" ).dialog({
				height: 140,
				modal: true
			});
			
			$('#dialog-modal p').html(response.message);
			
			if (parseInt(ths.parents('p').attr('rel'))) 
			{
				ths.parents('p').attr('rel','0');
				ths.parents('p').css({'background':'red'});
			}
			else
			{
				ths.parents('p').attr('rel','1');
				ths.parents('p').css({'background':'green'});
			}
			
			setTimeout(function(){
				$( "#dialog-modal" ).dialog("close");
			},1000);
			
		});		
	});
	
	$('.remove_comment').live('click', function(){
		
		var ths = $(this);
		
		$( "#dialog-remove").dialog({
		resizable: false,
		height:140,
		modal: true,
		buttons: {
				"Yes": function() {
					
					var id = ths.parents('p').attr('id');
					
					var URL = base_url + 'comments/remove_entry';
							
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