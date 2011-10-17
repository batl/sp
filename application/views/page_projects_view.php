<div id="wrapper">
	<div id="content">				
		<div id="dealer-content">	
			<div class="left-bar">
				<div id="sub-nav">
					<ul>
						<li><a id="projects" class="selected" href="javascript:void(0);"><?php echo $lang['all_projects']?></a></li>
						<li><a id="projects/<?php echo date("Y").'/'.date("m").'/next'?>" href="javascript:void(0);"><?php echo $lang['curent']?></a></li>
						<li><a id="projects/<?php echo date("Y").'/'.date("m").'/prev'?>" href="javascript:void(0);"><?php echo $lang['previus']?></a></li>					
						<li><a id="projects/<?php echo date("Y").'/'.date("m").'/in_process'?>" href="javascript:void(0);"><?php echo $lang['in_process']?></a></li>					
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
					<h3><?php echo $lang['projects']?></h3>
					<div style="float:right; padding:6px;">						
						<div class="clear_search"></div><input id="search" type="text" value="" style="height:18px; width:200px; float:left;"/>
						<div id="search_btn"></div>&nbsp;
						<strong><?php echo $lang['group']?></strong>
						<select class="groups">
							<option value="0"><?php echo $lang['all']?></option>
						<?php
							foreach ($categories as $category)
							{
							?>
							<option value="<?php echo $category['id']?>"><?php echo $category['name']?></option>
							<?php
							}
						?>
						</select>
					</div>
				</div>
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