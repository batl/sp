<div id="wrapper">
	<div id="content">
		<div id="sub_menu">
			[ <a href="javascript:void(0);" id="goods" class="selected"><?php echo $lang['goods']?></a> (<span><?php echo $count_goods?></span>) | 
			<a href="javascript:void(0);" id="goods_trash">&nbsp;&#8594; <?php echo $lang['in_trash']?></a> (<span style="color:<?php if ($trash_goods) echo 'red'; else echo 'green';?>;"><?php echo $trash_goods?></span>) | 
			<a href="javascript:void(0);" id="group_goods"><?php echo $lang['groups']?></a> ] [
			<a href="javascript:void(0);" id="service"><?php echo $lang['services']?></a> (<span><?php echo $count_services?></span>) |			
			<a href="javascript:void(0);" id="service_trash">&nbsp;&#8594; <?php echo $lang['in_trash']?></a> (<span style="color:<?php if ($trash_services) echo 'red'; else echo 'green';?>;"><?php echo $trash_services?></span>) | 
			<a href="javascript:void(0);" id="group_services"><?php echo $lang['groups']?></a>
			]
		</div>
		<h2><?php echo $lang['goods']?></h2> <a href="javascript:void(0);" class="add_item"><?php echo $lang['add']?></a><div id="search_switcher"></div><div class="message display_none"></div>
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
		
		<div id="modal_forms">
			<form method='post' id="type_modal_form" title="<?php echo $lang['create_new_category']?>">
				<?php echo $views['group_modal_form'];?>
			</form>
			
			<form method='post' id="scope_modal_form" title="<?php echo $lang['create_new_scope']?>">
				<?php echo $views['group_modal_form'];?>
			</form>
			
			<form method='post' id="activity_modal_form" title="<?php echo $lang['create_new_activity']?>">
				<?php echo $views['group_modal_form'];?>
			</form>
			
			<form method='post' id="place_modal_form" title="<?php echo $lang['create_new_place']?>">
				<?php echo $views['place_modal_form'];?>
			</form>
			
			<form method='post' id="place_type_modal_form" title="<?php echo $lang['create_new_place_type']?>">
				<?php echo $views['group_modal_form'];?>
			</form>
			
			<form method='post' id="organization_modal_form" title="<?php echo $lang['create_new_organization']?>">
				<?php echo $views['organization_modal_form'];?>
			</form>
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->