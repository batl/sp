var entry = 'projects';

$(document).ready(function(){
	
	var block = $('.items');
	
	$('.picker').datepicker({ dateFormat: 'yy-mm-dd' });
	
	get_items(block, entry, 0, 'id', 'asc');
	
	$('#date_search').click(function(){
		
		get_items(block, 'projects/date_filter/'+$('#date_start').val()+'v'+$('#date_end').val(), 0, 'id', 'asc', 'ignore');
		
	});
	
	$('#calendar th a').live('click', function(event){
		
		event.preventDefault();
		
		var URL = $(this).attr('href');
		
		$.post(URL, {}, function(data)
		{
			
			$('#calendar').html(data.responce);
			
		},"json");
	});
	
	$('#calendar td a').live('click', function(event){
		
		event.preventDefault();								
		
		$('#sub-hdr h3').html($(this).html()+' '+$('th[colspan=5]').attr('padej')+' '+$('th[colspan=5]').html().split('&nbsp;')[1]);
		
		get_items(block, $(this).attr('href'), 0, 'id', 'asc');
		
	});
	
	$('th[colspan=5]').live('click', function(){
		
		$('#sub-hdr h3').html($(this).html());
						
		get_items(block, 'projects/'+$(this).html().split('&nbsp;')[1]+'/'+$(this).attr('slug')+'/no', 0, 'id', 'asc');
		
	});
	
	$('.save_entry').live('click', function(){				
						
		save_entry($('#content-container'), 'project', $('input[name=id]').val());
		
	});
	
	$('.edit_item').live('click', function(){
		
		var id = $(this).attr('id');				
		
		get_view($('#content-container'), 'project', 'edit', id);
		
	});
	
	$('.remove_item').live('click', function(){
		
		var id = $(this).attr('id');												
		
		remove_entry($('#content-container'), 'project', id);
		
	});
	
	$('.projects_stages').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html()+" "+$(this).parents('tr').find('td').eq(2).html());
		
		entry = 'moreproject_'+id;
		
		get_items($('#content-container'),entry, 0, 'id', 'asc');
		
	});
	
	$('.stage_partners').live('click', function(){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html());				
		
		entry = 'joins_'+$(this).attr('id')+'-'+id+'-type';
		
		get_items($('#content-container'),entry, 0, 'id', 'asc');
		
	});
	
	$('.stage_action').live('click', function (){
		
		var id = $(this).parents('tr').find('td:first').html();					
		
		$('#content h2:first').html($(this).html());				
		
		entry = 'joins_'+$(this).attr('id')+'-'+id;
		
		get_items($('#content-container'),entry, 0, 'id', 'asc');
		
	});
	
	
	$.post(base_url + 'main/get_tags', {'entry':'project'}, function(data)
	{		
		var rnumber = Math.floor(Math.random()*9999999);
		var so = new SWFObject("http://szenprogs.ru/tagcloud/tagcloud.swf?r="+rnumber, "tagcloudflash", "225", "225", "7");
		so.addParam("wmode", "transparent");
		so.addParam("allowScriptAccess", "always");
		so.addParam("bgcolor", "#FF0000");
		so.addVariable("tspeed", "150");
		so.addVariable("distr", "true");
		so.addVariable("mode", "tags");
		so.addVariable("minFontSize", "8");
		so.addVariable("maxFontSize", "14");
		so.addVariable("tcolor", "0x009CFF");
		so.addVariable("tcolor2", "0x009CFF");
		so.addVariable("hicolor", "0x009CCF");
		so.addVariable("tagcloud", data.response);
		so.write("3dcloud_block");
		$('body').append(data.hidden);
		
	},'json');	
	
});