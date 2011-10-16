<div id="wrapper">
	<div id="content">	
		<div id="sub_menu">
			<a href="javascript:void(0);" id="dictionary" class="selected"><?php echo $lang['places']?></a>	|		
			<a href="javascript:void(0);" id="group_places"><?php echo $lang['groups']?></a> |		
			<a href="javascript:void(0);" id="group_territories"><?php echo $lang['territories']?></a>	|		
			<a href="javascript:void(0);" id="group_scopes" ><?php echo $lang['scopes']?></a>	|
			<a href="javascript:void(0);" id="group_activities" ><?php echo $lang['activities']?></a>	|
			<a href="javascript:void(0);" id="dictionary_methods" ><?php echo $lang['methods']?></a>	|		
			<a href="javascript:void(0);" id="dictionary_grants" ><?php echo $lang['grants']?></a> |
			<a href="javascript:void(0);" id="dictionary_organizations" ><?php echo $lang['organizations']?></a>
		</div>
		<h2><?php echo $lang['places']?></h2> <a href="javascript:void(0);" class="add_item"><?php echo $lang['add']?></a><div class="message display_none"></div>
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