<div id="wrapper">
	<div id="content">
		<div id="dealer-content">
			<div id="sub-nav-profile">
				<ul>
					<li>
						<a id="main_view" class="selected" href="javascript:void(0);"><?php echo $lang['profile_title']?></a>
					</li>
					<li>
						<a id="projects" href="javascript:void(0);"><?php echo $lang['profile_my_projects']?></a>
					</li>
					<li>
						<a id="change_pass_view" href="javascript:void(0);"><?php echo $lang['profile_change_password']?></a>
					</li>
				</ul>
			</div>						
			<div id="content-container">
				<div id="sub-hdr"><h3 class="section_title"><?php echo $lang['profile_title']?></h3></div>			
				<a href="javascript:void(0);" class="add_item"><?php echo $lang['add']?></a>
				<div class="message display_none"></div>
				<div class="items">
					&nbsp;
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
				<div id="limit"><a href="javascript:void(0);">5</a><a href="javascript:void(0);" class="selected">10</a><a href="javascript:void(0);">20</a><a href="javascript:void(0);">30</a></div>
			</div><!--  #content-container -->
			
						
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->