var sort_type = 'asc';
var sort = 'id';
var limit = 10;
var group = 0;
var search = '';
var story = new Array();
var titles = new Array();

$(document).ready(function(){	
	
	$('.clear_search').click(function(){
		$('#search').val('');
		var page  = parseInt($('.curent_page').html());
		var start = (page-1)*limit;				
		var block = $('.items');
		get_items(block, entry, start, sort, sort_type, 'ignore');
	});		
	
	$('.set_poll').live('click', function(){
		
		var URL = base_url + 'main/update_poll'
		
		var poll_id = $(this).attr('poll_id');
		var answer_id = $(this).attr('answer_id');
		
		$.post(URL,{'poll_id':poll_id,'answer_id':answer_id}, function(data)
		{
			
			if (data.result)	
			{
				for (var i = 0; i < data.response.length; i++) 
				{
					$('.poll div[id='+data.response[i].id+']').find('a').remove();
					$('.poll div[id='+data.response[i].id+']').append('<span>'+data.response[i].count+'</span>');
				}
			}
			
		},'json');
		
	});
	
	$('#languages a').click(function(){
		
		var URL = base_url + 'main/set_language'
		
		var lang = $(this).attr('id');
		
		$.post(URL,{'lang':lang}, function(data)
		{
			
			window.location.reload();
			
		},'json');
		
	});
	
	$('.history').live('click', function(){								
		
		doing = story[story.length-2].split('-');
		
		entry = doing[1];
		
		switch (doing[0])
		{
			case 'items':
				get_items($('.items'), entry, 0, sort, sort_type, false);
				break;
			case 'view':
				get_view($('.items'), entry, entry.split('/')[1], entry.split('/')[2], false);
				break;			
		}								
		
		var title = titles[titles.length-2];
								
		$('#sub-hdr h3').html(title);				
				
	});
	
	$('#translates a').live('click', function(){
		
		$('#translates a').removeClass('activ_translate');
		
		$(this).addClass('activ_translate');
		
		$('input[type=text][language!=no], div.textarea').hide();
		
		$('input[type=text][language='+$(this).attr('id')+'], div.textarea[language='+$(this).attr('id')+']').show();				
		
	});
	
	setTimeout(function () {$('#content, #footer').fadeIn('slow');}, 500);
	
	$('a.single').live('click', function(event){
		event.preventDefault();				
		$('#sub-hdr h3').html($(this).html());
		var start = 0;
		var block = $('.items');
		sort = 'id';
		entry = $(this).attr('id');
		get_items(block, entry, start, sort, sort_type);
	});
	
	$('#sub-nav a').click(function(event){
		event.preventDefault();		
		$('#sub-nav a').removeClass('selected');
		$(this).addClass('selected');
		$('#sub-hdr h3').html($(this).html());
		var start = 0;
		var block = $('.items');
		sort = 'id';
		group = 0;
		entry = $(this).attr('id');
		get_items(block, entry, start, sort, sort_type, true);
	});
	
	$('#limit a').click(function(){
		limit = parseInt($(this).html());
		$('#limit a').removeClass('selected');
		$(this).addClass('selected');
		var page  = parseInt($('.curent_page').html());
		var start = (page-1)*limit;
		var block = $('.items');
		get_items(block, entry, start, sort, sort_type, 'ignore');
	});
	
	//PAGINATION
	$('a.page').live('click', function(event){
		event.preventDefault();
		if ($('.curent_page').html()== $(this).html()) return false;
		var page = parseInt($(this).html());
		var start = (page-1)*limit;
		var block = $('.items');
		get_items(block, entry, start, sort, sort_type, 'ignore');
	});
	$('a.first_page').live('click',function(event){
		event.preventDefault();		
		var start = 0;
		var block = $('.items');
		get_items(block, entry, start, sort, sort_type, 'ignore');
	});
	$('a.prev_page').click(function(event){
		event.preventDefault();
		if($('.curent_page').html()=='1') return false;
		var page = parseInt($('.curent_page').html())-1;
		var start = (page-1)*limit;
		var block = $('.items');
		get_items(block, entry, start, sort, sort_type, 'ignore');
	});
	$('a.next_page').click(function(event){
		event.preventDefault();
		if($('.curent_page').html() == $('.total :last').html()) return false;
		var page = parseInt($('.curent_page').html())+1;
		var start = (page-1)*limit;
		var block = $('.items');
		get_items(block, entry, start, sort, sort_type, 'ignore');
	});
	$('a.last_page').click(function(event){
		event.preventDefault();
		if($('.curent_page').html() == $('.total :last').html()) return false;
		var page = parseInt($('.total :last').html());
		var start = (page-1)*limit;
		var block = $('.items');
		get_items(block, entry, start, sort, sort_type, 'ignore');
	});
	//SORT
	$('.t_title td.sorting').live('click', function(){
		var page  = parseInt($('.curent_page').html());
		var start = (page-1)*limit;
		sort  = $(this).find('span').html();
		sort_type = $(this).attr('sort');		
		var block = $(this).parents('.list div:first');
		get_items(block, entry, start, sort, sort_type, 'ignore');
	});
	
	//GROUP FILTER
	$('.groups').change(function(){
		group = $(this).val();
		var start = 0;
		var block = $('.items');
		get_items(block, entry, start, sort, sort_type, 'ignore');
	});
	
	//SEARCH FILTER
	$('#search_btn').click(function(){		
		var start = 0;
		var block = $('.items');
		get_items(block, entry, start, sort, sort_type, 'ignore');
	});		
	
	$('#search').keypress(function(event){				
		if (event.which == '13') 
		{
			var start = 0;
			var block = $('.items');
			get_items(block, entry, start, sort, sort_type, 'ignore');
	    }
	});
	
});

//TAG SEARCH
function tag_search(id)
{
	$('#search').val($('span[id="'+id+'"]').html());
	var start = 0;
	var block = $('.items');
	get_items(block, entry, start, sort, sort_type, 'ignore');
}

function focus_input()
{
	$('#'+this.id).css("background-color","white");
}

function get_items(block, entry, start, sort, sort_type, clear_history)
{	
	
	block.html('<div class="world_preloader"></div>');
		
	$('.world_preloader').show();
		
	var URL = base_url + 'page/get_items/' + entry;
	
	var sub_entry = entry.split('/');
	
	if ($('#search').length) search = $('#search').val();
	
	$.post(URL, {"sort":sort, "start":start, "sort_type":sort_type, "group":group, "search":search, "limit":limit}, function(data)
	{
		$('.world_preloader').hide();
	
		block.html(data.response);
		
		if ($("a.lightbox").length) $("a.lightbox").lightBox();
		
		if (clear_history == undefined)
		{
			if (story.length)
			{
				$('.history').remove();
		
				$('#sub-hdr h3').before('<span class="history"></span>');
			}
			
			story.push('items-'+entry);
			titles.push($('#sub-hdr h3').html());
		}
		else if (clear_history == 'ignore')
		{
		
		}
		else
		{
			if (clear_history)
			{			
				story = new Array();
				titles = new Array();
				story.push('items-'+entry);
				titles.push($('#sub-hdr h3').html());
			}
			else
			{
				story.pop(); 
				titles.pop();
			}
			
			if (story.length < 2) $('.history').remove();
		}										
		
		if (sub_entry.length == 1) transform_pagination(data.curent_page, data.total); else $('#paging, #limit').hide();
		
	},"json");
}

function get_view(block, entry, action, id, clear_history)
{
	$('#paging, #limit').hide();

	block.html('<div class="world_preloader"></div>');
		
	$('.world_preloader').show();
	
	var URL = base_url + 'page/get_view/' + entry;
	
	$.post(URL, {"action":action, "id":id}, function(data)
	{
		$('.world_preloader').hide();
	
		block.html(data.response);
		
		if (clear_history == undefined)
		{
			if (story.length)
			{
				$('.history').remove();
		
				$('#sub-hdr h3').before('<span class="history"></span>');
			}
			
			story.push('view-'+entry+'/'+action+'/'+id);
			titles.push($('#sub-hdr h3').html());			
		}
		else 
		{
			if (clear_history)
			{			
				story = new Array();
				titles = new Array();
				story.push('view-'+entry+'/'+action+'/'+id);
				titles.push($('#sub-hdr h3').html());
			}
			else
			{
				story.pop(); 
				titles.pop();
			}
			
			if (story.length < 2) $('.history').remove();
		}				
		
		if ($('#foto').length) image_upload(entry);
		if ($('#background').length) image_upload(entry, 'background', 'site_background', 960);
		if ($('#banner').length) image_upload(entry, 'banner', 'project_banner', 450, 'width');
		if ($('.document').length)
		{
			$('.document').each(function(){ document_upload($(this).attr('id')); });
		}
		
		if ($('#colorSelector').length) 
		{
			$('#colorSelector').ColorPicker({
				color: '#0000ff',
				onShow: function (colpkr) {
					$(colpkr).fadeIn(500);
					return false;
				},
				onHide: function (colpkr) {
					$(colpkr).fadeOut(500);
					return false;
				},
				onChange: function (hsb, hex, rgb) {
					$('#colorSelector div').css('backgroundColor', '#' + hex);
					$('input[name=bg_color]').val('#' + hex);
				}
			});
		}
		
		$('input[type=text][language!=no], div.textarea').hide();
		
		$('input[type=text][language='+language_id+'], div.textarea[language='+language_id+']').show();
		
		if ($('.picker').length) $('.picker').datepicker({ dateFormat: 'yy-mm-dd' });
		
		if ($('textarea').length) tiny_init();				
		
	},"json");
}


function transform_pagination(curent_page, total)
{
	$('#paging, #limit').show();
	
	var html = '<div id="page-numbers">';
	
	for (var i = 0; i < total; i++)
	{
		if ((curent_page - i) < 4 && (curent_page - i) > -4)
		{
			if (i == curent_page)
			{
				html += '<a href="javascript:void(0);" class="curent_page page">'+(i+1)+'</a>';					
			}
			else
			{						
				html += '<a href="javascript:void(0);" class="page">'+(i+1)+'</a>';			
			}
		}
	}

	html += '</div>';
	
	$('#page-numbers').remove();
	
	$('.prev_page').after(html);
	
	$('.total :last').html(total);
		
	return true;
}

function save_entry(block, entry, id, single)
{	

	if ($('textarea').length) tinyMCE.triggerSave();
		
	var keys = new Array();
	var data = new Array();
	
	var lang_keys = new Array();
	var lang_data = new Array();
	
	$('#wrapper').find('input[type=text][language!=no]').each(function(){
		lang_keys.push($(this).attr('name'));
		lang_data.push($(this).val());
	});	

	$('div.textarea').each(function(){
		lang_keys.push($(this).attr('name'));
		lang_data.push($(this).find('textarea').val());
	});

	$('#wrapper').find('input[type=text][language=no], select').each(function(){
		keys.push($(this).attr('name'));
		data.push($(this).val());
	});
	
	$('#wrapper').find('input[name=password][language=no], input[type=hidden][name!=id]').each(function(){
		keys.push($(this).attr('name'));
		data.push($(this).val());
	});
	
	$('#wrapper').find('input[type=checkbox]').each(function(){
		keys.push($(this).attr('name'));
		if ($(this).is(':checked')) data.push(1); else data.push(0);
	});

	if ($('#foto_img').length){
		keys.push($('#foto_img').attr('name'));
		keys.push('thumb');
		data.push($('#foto_img').attr('big'));
		data.push($('#foto_img').attr('small'));
	}
	
	if ($('.site_logo').length){
		$('.site_logo').each(function(){
			lang_keys.push($(this).attr('name'));					
			lang_data.push($(this).attr('big'));			
		});	
		$('.site_logo').each(function(){
			lang_keys.push('logo_thumb');
			lang_data.push($(this).attr('small'));
		});
	}
	
	if ($('#site_background').length){
		keys.push($('#site_background').attr('name'));
		data.push($('#site_background').attr('big'));
	}
	
	if ($('#site_banner').length){
		keys.push($('#site_banner').attr('name'));
		data.push($('#site_banner').attr('big'));
	}
	
	if ($('#project_banner').length){
		keys.push($('#project_banner').attr('name'));
		data.push($('#project_banner').attr('big'));
	}
	
	if ($('#admin_banner').length){
		keys.push($('#admin_banner').attr('name'));
		data.push($('#admin_banner').attr('big'));
	}
	
	if (single == undefined)
	{
		block.html('<div class="world_preloader"></div>');
		
		$('.world_preloader').show();		
	}
	
	var URL = base_url + 'page/save_entry/' + entry;
	
	$.post(URL, {"keys":keys, "data":data, "lang_keys":lang_keys, "lang_data":lang_data, "id":id}, function(response)
	{
		$('.world_preloader').hide();
		
		$('.message').html(response.message).show();
				setTimeout(function(){
					$('.message').fadeOut('fast');
				},3000);
		
		if (single == undefined)
		{
			var page  = parseInt($('.curent_page span').html());
			var start = (page-1)*12;
				
			get_items(block, entry, start, sort, sort_type, false);
						
		}
		
	},"json");
}

//--------------------------------------------------------------------------------------
function image_upload(obj, input_file, logo_view, size, direction)
{	
	
	if (input_file == undefined) input_file = 'foto';
	
	new AjaxUpload(input_file, {
        action: base_url + 'upload/index/' + obj.split('_')[0] + '/' + obj.split('_')[1] + '/' + size + '/' + direction,
        name: 'userfile',
        onSubmit: function(file, extension) 
		{
		  //$('#loader').css('display','block');
		  //$('#image_user_photo').css('display','none');
        },
        onComplete: function(file, response) 
		{
			if (response.error)
			{
				alert(response.error);
				location.reload();
			}
			else
			{
				var small_url = response.small_url;
				var big_url   = response.big_url;																
				
				if (logo_view == undefined) logo_view = 'foto_img';
				
				switch (logo_view)
				{
					case 'foto_img':					
						$('#'+logo_view).attr('src', base_url + small_url).attr('big', big_url).attr('small', small_url);
						break;
					default:
						$('#'+logo_view).attr('src', base_url + big_url).attr('big', big_url).attr('small', small_url);
						break;
				}
				//$('#photo_th').css('display','block');
				//$('#loader_th').css('display','none');
			}
        }
    });
		
}

//--------------------------------------------------------------------------------------
function document_upload(input_file)
{	
	
	if (input_file == undefined) input_file = 'doc';
	
	new AjaxUpload(input_file, {
        action: base_url + 'upload/upload_doc',
        name: 'doc',        
        onComplete: function(file, response) 
		{
			if (response.result)
			{				
				$('input[name='+input_file+']').val(response.file);
				$('#'+input_file).parents('.ginput_container').find('a').attr('href', base_url+'doc/'+response.file).html(response.file);
			}
			else
			{
				alert(response.result);
				location.reload();
			}
        }
    });
		
}

function remove_entry(block, entry, id)
{
		
	if (confirm('Are you sure?'))
	{
		block.html('<div class="world_preloader"></div>');
			
		$('.world_preloader').show();		
		
		var URL = base_url + 'page/remove_entry/' + entry;
		
		$.post(URL, {"id":id}, function(response)
		{
			$('.world_preloader').hide();
			
			$('.message').html(response.message).show();
					setTimeout(function(){
						$('.message').fadeOut('fast');
					},3000);
					
			var page  = parseInt($('.curent_page span').html());
			var start = (page-1)*12;
		
			get_items(block, entry, start, sort, sort_type, true);
			
		},"json");
	}			
	
}

function tiny_init()
{
	tinyMCE.init({			
			mode : "textareas",
			theme : "advanced",
			plugins : "table,inlinepopups",
			
			theme_advanced_buttons1 : "bullist,indent,outdent,copy,paste,cut,undo,redo,charmap,link,unlink",
			theme_advanced_buttons2 : "bold, italic, underline, image, hr, justifyleft, justifycenter, justifyright, justifyfull, styleselect, formatselect",
			theme_advanced_buttons3 : "",

			theme_advanced_toolbar_location : "top",
			theme_advanced_toolbar_align : "left",
			theme_advanced_statusbar_location : "bottom",
			theme_advanced_resizing : true,
			
			content_css : base_url+"/static/js/tiny_mce/themes/advanced/skins/default/content.css",				
			
			style_formats : [
					{title : 'Bold text', inline : 'b'},
					{title : 'Red text', inline : 'span', styles : {color : '#ff0000'}},
					{title : 'Red header', block : 'h1', styles : {color : '#ff0000'}},
					{title : 'Example 1', inline : 'span', classes : 'example1'},
					{title : 'Example 2', inline : 'span', classes : 'example2'},
					{title : 'Table styles'},
					{title : 'Table row 1', selector : 'tr', classes : 'tablerow1'}
			],

			formats : {
					alignleft : {selector : 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes : 'left'},
					aligncenter : {selector : 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes : 'center'},
					alignright : {selector : 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes : 'right'},
					alignfull : {selector : 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes : 'full'},
					bold : {inline : 'span', 'classes' : 'bold'},
					italic : {inline : 'span', 'classes' : 'italic'},
					underline : {inline : 'span', 'classes' : 'underline', exact : true},
					strikethrough : {inline : 'del'},
					customformat : {inline : 'span', styles : {color : '#00ff00', fontSize : '20px'}, attributes : {title : 'My custom format'}}
			}
	});
}