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
		
		<form method='post' id="place_type_modal_form" title="<?php echo $lang['create_new_place_type']?>">
			<div class='gform_heading'>
			</div>
			<div class='gform_body'>
				<input type='hidden' class='gform_hidden' name='id' value='0'/>
				<ul class='gform_fields top_label'>								
					<li class='gfield'><label class='gfield_label'><?php echo $lang["name"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='name' language="<?php echo $language['id']?>" type='text' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>			
				</ul>
			</div>
			<div class='gform_footer top_label'>				
				<div id="modal_translates">
					<?php
						foreach ($languages as $item):
						?>
							<a href="javascript:void(0);" id="<?php echo $item['id']?>" class="translate <?php if ($language_id == $item['id']) echo 'activ_translate';?>"><img src="<?php echo $base_img?>countries/<?php echo $item['flag']?>"/></a>
						<?php
						endforeach;
					?>
				</div>
			</div>
		</form>
		
		<form method='post' id="scope_modal_form" title="<?php echo $lang['create_new_scope']?>">
			<div class='gform_heading'>
			</div>
			<div class='gform_body'>
				<input type='hidden' class='gform_hidden' name='id' value='0'/>
				<ul class='gform_fields top_label'>								
					<li class='gfield'><label class='gfield_label'><?php echo $lang["name"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='name' language="<?php echo $language['id']?>" type='text' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>			
				</ul>
			</div>
			<div class='gform_footer top_label'>				
				<div id="modal_translates">
					<?php
						foreach ($languages as $item):
						?>
							<a href="javascript:void(0);" id="<?php echo $item['id']?>" class="translate <?php if ($language_id == $item['id']) echo 'activ_translate';?>"><img src="<?php echo $base_img?>countries/<?php echo $item['flag']?>"/></a>
						<?php
						endforeach;
					?>
				</div>
			</div>
		</form>
	</div><!--  #content -->
</div><!--  #wrapper -->