<div id="wrapper">
	<div id="content">		
		<div id="sub_menu">
			<a href="javascript:void(0);" id="page" class="selected"><?php echo $lang['pages']?></a> (<span><?php echo $count_pages?></span>) | 
			<a href="javascript:void(0);" id="page_trash">&nbsp;&#8594; <?php echo $lang['in_trash']?></a> (<span style="color:<?php if ($trash_pages) echo 'red'; else echo 'green';?>;"><?php echo $trash_pages?></span>) 
		</div>
		<h2><?php echo $lang['pages']?></h2> <a href="javascript:void(0);" class="add_item"><?php echo $lang['add']?></a><div id="search_switcher"></div><div class="message display_none"></div>
		<div id="overview">
			<div class="list">
				<div class="items">
													
				</div>
				<div class="pagination">
					<ul>
						<li class="first_page">
							<a href="#">
								<img alt="" title="" src="/static/images/pagination/first_page_btn.gif" />
							</a>
						</li>
						<li class="prev_page">
							<a href="#">
								<img alt="" title="" src="/static/images/pagination/prev_page_btn.gif" />
							</a>
						</li>
																			
						<li class="total">
							<span><?php echo $lang['of']?> </span><span></span>
						</li>
						<li class="next_page">
							<a href="#">
								<img alt="" title="" src="/static/images/pagination/next_page_btn.gif" />
							</a>
						</li>
					</ul>
				</div>
				<div id="limit"><span><?php echo $lang['records_per_page']?>:</span>&nbsp;<a href="javascript:void(0);">5</a><a href="javascript:void(0);" class="selected">10</a><a href="javascript:void(0);">20</a><a href="javascript:void(0);">30</a></div>
			</div>
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->