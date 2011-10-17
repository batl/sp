<div id="wrapper">
	<div id="content">
		<div id="sub_menu">
			<a href="javascript:void(0);" id="user" class="selected"><?php echo $lang['users']?></a> | 
			<a href="javascript:void(0);" id="group"><?php echo $lang['groups']?></a>
		</div>
		<h2><?php echo $lang['users']?></h2> <a href="javascript:void(0);" class="add_item"><?php echo $lang['add']?></a><div class="message display_none"></div>
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
		<form method='post' id="modal_form" title="<?php echo $lang['create_new_user_category']?>">
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
				<!--<input type='button' id='gform_submit_button_2' class='button save_entry' value='<?php echo $lang["save"]?>' tabindex='6'/>-->
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