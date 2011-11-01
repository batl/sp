<div class="form">
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='0'/>
		<input type='hidden' class='gform_hidden' name='user_id' value='<?php echo $admin_info['id']?>'/>
		<ul class='gform_fields top_label'>								
			<li class='gfield'><label class='gfield_label'><?php echo $lang["title"]?><span class='gfield_required'>*</span>:</label>
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
			<div id="map_canvas" style="width:100%; height:300px;"></div>
			<input type='hidden' class='gform_hidden' name='map' value=''/>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["map_description"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='map_description' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'/></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["contacts"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='contacts' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["slug"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='slug' language="no" type='text' value='' class='medium' tabindex='3'/>
				</div>
			</li>			
			<img id="foto_img" name="logo" big="" small="" src=""/>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["logo"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang['project_banner']?><span class='gfield_required'>*</span></label>
				<div id="photo-preview">
					<img id="project_banner" language="no" name="banner" big="" style="max-height:100px; max-width:100px;" src=""/>
				</div>
				<div class='ginput_container'>
					<input name='userfile' language="no" id='banner' type='file' value='' class='upload' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["terms"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<input name='tags' language="<?php echo $language['id']?>" type='text' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["in_process"]?>:</label>
				<div class='ginput_container'>
					<input name='in_process' type='checkbox' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["date_start"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='date_start' language="no" type='text' value='' class='medium picker' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["date_end"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='date_end' language="no" type='text' value='' class='medium picker' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["group"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="category_id">
						<option value="0"><?php echo $lang["no_group"]?></option>
						<?php
						foreach ($groups as $group)
						{
						?>
						<option value="<?php echo $group['id']?>"><?php echo $group['name']?></option>
						<?php
						}
						?>
					</select>	
					<span id="create_category" class="create_new"></span>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["place"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="place">
						<option value="0"><?php echo $lang["no_place"]?></option>
						<?php
						foreach ($places as $place)
						{
						?>
						<option value="<?php echo $place['id']?>"><?php echo $place['name']?></option>
						<?php
						}
						?>
					</select>	
					<span id="create_place" class="create_new"></span>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["facebook_link"]?>:</label>
				<div class='ginput_container'>
					<input name='facebook_link' language="no" type='text' value='' class='medium' tabindex='3'/>
				</div>
			</li>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["twitter_link"]?>:</label>
				<div class='ginput_container'>
					<input name='twitter_link' language="no" type='text' value='' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["vkontakte_link"]?>:</label>
				<div class='ginput_container'>
					<input name='vkontakte_link' language="no" type='text' value='' class='medium' tabindex='3'/>
				</div>
			</li>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["purpose"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='purpose' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["poster"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='poster' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["short_description"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<input name='short_description' language="<?php echo $language['id']?>" type='text' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='note' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang['site_background']?><span class='gfield_required'>*</span></label>
				<div id="photo-preview">
					<img id="site_background" language="no" name="bg_image" big="" style="max-height:100px; max-width:100px;" src=""/>
				</div>
				<div class='ginput_container'>
					<input name='userfile' language="no" id='background' type='file' value='' class='upload' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'>
				<div class='ginput_container'>					
					<div id="colorSelector">
						<div style="background-color: rgb(24, 24, 46);"></div>
					</div>
					<input name='bg_color' type='hidden' value='#fff' class='medium' tabindex='4' />
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["apply_background"]?>:</label>
				<div class='ginput_container'>
					<input name='apply_bg' type='checkbox' class='medium' tabindex='4' <?php if ($entry['apply_bg']) echo 'checked="checked"'?>/>
				</div>
			</li>
			<li class='gfield'>
				<div class='ginput_container'>
					<div id="project_bg">
						<div id="project_bg_preview" style="background:url('<?php echo $front_url?>static/images/background/<?php echo $entry['bg_image']?>');"></div>
						<input name='bg_image' type='hidden' value='<?php echo $entry['bg_image']?>' class='medium' tabindex='4' />
						<?php											
							foreach ($backgrounds as $key => $type)
							{							
								foreach ($type as $background)
								{								
									?>
									<div class="project_bg" rel="<?php echo $key?>/<?php echo $background?>" style="background:url('<?php echo $front_url?>static/images/background/<?php echo $key?>/<?php echo $background?>');"/>
									<?php
								}
							}
						?>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<div class='gform_footer top_label'>
		<input type='button' id='gform_submit_button_2' class='button save_entry' value='<?php echo $lang["save"]?>' tabindex='6'/>
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
</div>