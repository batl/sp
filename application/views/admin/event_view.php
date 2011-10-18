<div id="wrapper">
	<div id="content">
		<div id="sub_menu">
			<a href="javascript:void(0);" id="event" class="selected"><?php echo $lang['events']?></a> | 
			<a href="javascript:void(0);" id="group_events"><?php echo $lang['groups']?></a>			
		</div>
		<h2><?php echo $lang['events']?></h2> <a href="javascript:void(0);" class="add_item"><?php echo $lang['add']?></a><div class="message display_none"></div>
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
		
		<form method='post' id="type_modal_form" title="<?php echo $lang['create_new_event_type']?>">
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
		
		<form method='post' id="method_modal_form" title="<?php echo $lang['create_new_method']?>">
			<div class='gform_heading'>
			</div>
			<div class='gform_body'>
				<input type='hidden' class='gform_hidden' name='id' value='0'/>
				<ul class='gform_fields top_label'>								
					<li class='gfield'><label class='gfield_label'><?php echo $lang["title"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='name' language="<?php echo $language['id']?>" type='text' value='' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>	
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["author"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>					
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='author' language="<?php echo $language['id']?>" type='text' value='' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>	
						</div>
					</li>		
					<li class='gfield'><label class='checkbox_label'><?php echo $lang["scope"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<select name="scope">
								<option value="0"><?php echo $lang["no_scope"]?></option>
								<?php
								foreach ($scopes as $scope)
								{
								?>
								<option value="<?php echo $scope['id']?>"><?php echo $scope['name']?></option>
								<?php
								}
								?>
							</select>
							<span id="create_scope" class="create_new"></span>
						</div>
					</li>		
					<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>: </label>
						<div class='ginput_container'>					
							<?php 							
								foreach ($languages as $language):
									?>
									<div class="textarea" name='description' language="<?php echo $language['id'];?>">
										<textarea class='textarea small' tabindex='5' rows='10' cols='50'></textarea>
									</div>
									<?php								
								endforeach;							
							?>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["links"]?>: </label>
						<div class='ginput_container'>					
							<input name='links' language="no" type='text' value='' class='medium' tabindex='3'/>
						</div>
					</li>
				</ul>
			</div>
			<div class='gform_footer top_label'>				
				<div id="translates">
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
		
		<form method='post' id="place_modal_form" title="<?php echo $lang['create_new_place']?>">
			<div class='gform_heading'>
			</div>
			<div class='gform_body'>
				<input type='hidden' class='gform_hidden' name='id' value='0'/>
				<ul class='gform_fields top_label'>								
					<li class='gfield'><label class='gfield_label'><?php echo $lang["title"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='name' language="<?php echo $language['id']?>" type='text' value='' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["address"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>					
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='address' language="<?php echo $language['id']?>" type='text' value='' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["road_plan"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<input name='road_plan' language="no" type='file' value='' class='medium' tabindex='3'/>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["phones"]?>:</label>
						<div class='ginput_container'>
							<input name='phones' language="no" type='text' value='' class='medium' tabindex='4'/>
						</div>
					</li>
					<li class='gfield'><label class='checkbox_label'><?php echo $lang["place_type"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<select name="place_type">
								<option value="0"><?php echo $lang["no_place_type"]?></option>
								<?php
								foreach ($place_types as $place_type)
								{
								?>
								<option value="<?php echo $place_type['id']?>"><?php echo $place_type['name']?></option>
								<?php
								}
								?>
							</select>
						</div>
					</li>		
					<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>: </label>
						<div class='ginput_container'>					
							<?php 							
								foreach ($languages as $language):
									?>
									<div class="textarea" name='note' language="<?php echo $language['id'];?>">
										<textarea class='textarea small' tabindex='5' rows='10' cols='50'></textarea>
									</div>
									<?php								
								endforeach;							
							?>	
						</div>
					</li>
				</ul>
			</div>
			<div class='gform_footer top_label'>				
				<div id="translates">
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