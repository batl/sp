<div id="wrapper">
	<div id="content">
		<div id="sub_menu">
			[ <a href="javascript:void(0);" id="news" class="selected"><?php echo $lang['news']?></a> (<span><?php echo $count_news?></span>) | 			
			<a href="javascript:void(0);" id="news_trash">&nbsp;&#8594; <?php echo $lang['in_trash']?></a> (<span style="color:<?php if ($trash_news) echo 'red'; else echo 'green';?>;"><?php echo $trash_news?></span>) ] [
			<a href="javascript:void(0);" id="anonses"><?php echo $lang['anonses']?></a> (<span><?php echo $count_anonses?></span>) |
			<a href="javascript:void(0);" id="anonses_trash">&nbsp;&#8594; <?php echo $lang['in_trash']?></a> (<span style="color:<?php if ($trash_anonses) echo 'red'; else echo 'green';?>;"><?php echo $trash_anonses?></span>) 
			]
		</div>
		<h2><?php echo $lang['news']?></h2> <a href="javascript:void(0);" class="add_item"><?php echo $lang['add']?></a><div id="search_switcher"></div><div class="message display_none"></div>
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