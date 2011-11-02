<div id="wrapper">
	<div id="content">				
		<div id="dealer-content">	
			<div class="left-bar">
				<div id="sub-nav">
					<ul>
						<li><a id="events" class="selected" href="javascript:void(0);"><?php echo $lang['all_events']?></a></li>
						<li><a id="events/<?php echo date("Y").'/'.date("m").'/next'?>" href="javascript:void(0);"><?php echo $lang['curent']?></a></li>
						<li><a id="events/<?php echo date("Y").'/'.date("m").'/prev'?>" href="javascript:void(0);"><?php echo $lang['previus']?></a></li>					
						<li><a id="events/<?php echo date("Y").'/'.date("m").'/future'?>" href="javascript:void(0);"><?php echo $lang['future']?></a></li>					
						<li><a id="events/<?php echo date("Y").'/'.date("m").'/in_process'?>" href="javascript:void(0);"><?php echo $lang['in_process']?></a></li>											
					</ul>
				</div>
				<div id="date_filter" class="sidebar">
					<p style="text-align:center;"><?php echo $lang['date_filter']?></p><div id="date_search"></div>
					<span><?php echo $lang['start']?></span><input id="date_start" class="picker" type="text" value="" style="height:18px; width:150px; margin:5px;"/>
					<span><?php echo $lang['end']?>&nbsp;&nbsp;&nbsp;</span><input id="date_end" class="picker" type="text" value="" style="height:18px; width:150px; margin:5px;"/>
				</div>
				<div id="calendar">
					<?php echo $calendar;?>
				</div>				
				<div id="3dcloud_block" style="text-align:center;font-size:12pt;">
					
  			    </div>
			</div>
			
			<div id="content-container">
				<div id="sub-hdr">
					<h3><?php echo $lang['events']?></h3>
					<div style="float:right; padding:6px;">						
						<div class="clear_search"></div><input id="search" type="text" value="" style="height:18px; width:150px; float:left;"/>
						<div id="search_btn"></div>
						<div id="sort_by_block">
							<span><?php echo $lang['sort_by']?></span>
							<select id="sort_by">
								<option value="id"><?php echo $lang['default']?></option>
								<option value="name"><?php echo $lang['name']?></option>
								<option value="date_start"><?php echo $lang['date_start']?></option>
								<option value="date_end"><?php echo $lang['date_end']?></option>								
							</select>
							<a href="javascript:void(0);" title="<?php echo $lang['sort_direction']?>" id="sort_direction" rel="asc">&nbsp;&#8595;</a>
						</div>
					</div>
				</div>
				<div id="filters">					
					<a class="groups selected" rel="0"><?php echo $lang['all_categories']?></a>
					<?php
						foreach ($categories as $category)
						{
						?>
						&nbsp;|&nbsp;<a class="groups" rel="<?php echo $category['id']?>"><?php echo $category['name']?></a>
						<?php
						}
					?>					
				</div>
				<fieldset id="search_block">
				   <legend><?php echo $lang['expanded_search']?></legend>
				   <div id="search_fields"> 
						<span><?php echo $lang['name']?>:&nbsp;</span><input name="name" type="text" value=""/>
						<div class="clear"></div>
						<input id="expanded_search" type="button" class="button" value="<?php echo $lang['search'];?>"/>
				   </div>
				</fieldset>
				
				<div id="items" class="items">
					
				</div>

				<div id="paging">
					<a class="first_page" href="javascript:void(0);">
						<img src="static/images/btn_page_begin.png" />
					</a> 
					<a class="prev_page" href="javascript:void(0);">
						<img src="static/images/btn_page_previous.png" />
					</a>										
					
					<li class="total">
						<span><?php echo $lang['of']?> </span><span></span>
					</li>
					<a  class="next_page" href="javascript:void(0);">
						<img src="static/images/btn_page_next.png" />
					</a> 
					<a  class="last_page" href="javascript:void(0);">
						<img src="static/images/btn_page_end.png" />
					</a>
				</div>				
				<div id="limit"><span><?php echo $lang['records_per_page']?>:</span>&nbsp;<a href="javascript:void(0);">5</a><a href="javascript:void(0);" class="selected">10</a><a href="javascript:void(0);">20</a><a href="javascript:void(0);">30</a></div>		
			</div><!--  #content-container -->
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->