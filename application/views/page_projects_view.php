<div id="wrapper">
	<div id="content">				
		<div id="dealer-content">	
			<div class="left-bar">
				<div id="sub-nav">
					<ul>
						<li><a id="projects" class="selected" href="javascript:void(0);"><?php echo $lang['all_projects']?></a></li>
						<li><a id="projects/<?php echo date("Y").'/'.date("m").'/next'?>" href="javascript:void(0);"><?php echo $lang['curent']?></a></li>
						<li><a id="projects/<?php echo date("Y").'/'.date("m").'/prev'?>" href="javascript:void(0);"><?php echo $lang['previus']?></a></li>					
					</ul>
				</div>				
				<div id="calendar">
					<?php echo $calendar;?>
				</div>			
			</div>
			
			<div id="content-container">
				<div id="sub-hdr"><h3><?php echo $lang['projects']?></h3></div>
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
			</div><!--  #content-container -->
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->