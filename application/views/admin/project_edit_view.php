<form method='post'>
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='<?php echo $entry['id']?>'/>
		<ul class='gform_fields top_label'>								
			<li class='gfield'><label class='gfield_label'><?php echo $lang["title"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<input name='name' language="<?php echo $language['id'];?>" type='text' value='<?php echo $entry['name'][$language['id']];?>' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<div id="map_canvas" style="width:100%; height:300px;"></div>
			<input type='hidden' class='gform_hidden' name='map' value='<?php echo $entry['map']?>'/>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["map_description"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='map_description' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'><?php echo $entry['map_description'][$language['id']];?></textarea>
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
								<textarea type='text' class='medium' tabindex='3'><?php echo $entry['contacts'][$language['id']];?></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["slug"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='slug' language="no" type='text' value='<?php echo $entry['slug']?>' class='medium' tabindex='3' disabled="disabled"/>
				</div>
			</li>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["logo"]?><span class='gfield_required'>*</span>:</label>
				<img id="foto_img" name="logo" big="<?php echo $entry['logo']?>" small="<?php echo $entry['thumb']?>" src="<?php echo $front_url.$entry['thumb']?>"/>
				<div class='ginput_container'>
					<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
				</div>
				<a href="javascript:void(0);" class="remove_image"><?php echo $lang['remove_image']?></a>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang['project_banner']?><span class='gfield_required'>*</span></label>
				<div id="photo-preview">
					<img id="project_banner" language="no" name="banner" big="<?php echo $entry['banner']?>" style="max-height:100px; max-width:100px;" src="<?php echo $front_url.$entry['banner']?>"/>
				</div>
				<div class='ginput_container'>
					<input name='userfile' language="no" id='banner' type='file' value='' class='upload' tabindex='3'/>
				</div>
				<a href="javascript:void(0);" class="remove_image"><?php echo $lang['remove_image']?></a>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["terms"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<input name='tags' language="<?php echo $language['id'];?>" type='text' value='<?php echo $entry['tags'][$language['id']];?>' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["in_process"]?>:</label>
				<div class='ginput_container'>
					<input name='in_process' type='checkbox' class='medium' tabindex='4' <?php if ($entry['in_process']) echo 'checked="checked"'?>/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["date_start"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='date_start' language="no" type='text' value='<?php if (!empty($entry['date_start']) && $entry['date_start'] != '0000-00-00') echo $entry['date_start']?>' class='medium picker' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["date_end"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='date_end' language="no" type='text' value='<?php if (!empty($entry['date_end']) && $entry['date_end'] != '0000-00-00') echo $entry['date_end']?>' class='medium picker' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["group"]?><span class='gfield_required'>*</span>:</label><br/>
				<div class='ginput_container array' name="category_id">
					<?php
					$project_categories = json_decode($entry['category_id'], true);					
					
					foreach ($groups as $group)
					{							
						?>							
						<br/>						
						<span style="display:block; width:300px; float:left;"><?php echo $group['name']?></span><input type="checkbox" rel="array" value="<?php echo $group['id']?>" <?php if (!empty($project_categories) && is_array($project_categories) && in_array($group['id'], $project_categories)) echo 'checked="checked"';?>/>
						<?php							
					}
					?>					
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
						<option value="<?php echo $place['id']?>" <?php if ($place['id'] == $entry['place']) echo 'selected="selected"';?>><?php echo $place['name']?></option>
						<?php
						}
						?>
					</select>	
					<span id="create_place" class="create_new"></span>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["facebook_link"]?>:</label>
				<div class='ginput_container'>
					<input name='facebook_link' language="no" type='text' value='<?php echo $entry['facebook_link']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["twitter_link"]?>:</label>
				<div class='ginput_container'>
					<input name='twitter_link' language="no" type='text' value='<?php echo $entry['twitter_link']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["vkontakte_link"]?>:</label>
				<div class='ginput_container'>
					<input name='vkontakte_link' language="no" type='text' value='<?php echo $entry['vkontakte_link']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["purpose"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='purpose' language="<?php echo $language['id'];?>">
								<textarea class='textarea small' tabindex='5' rows='10' cols='50'><?php echo $entry['purpose'][$language['id']];?></textarea>		
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
								<textarea class='textarea small' tabindex='5' rows='10' cols='50'><?php echo $entry['poster'][$language['id']];?></textarea>		
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
							<input name='short_description' language="<?php echo $language['id'];?>" type='text' value='<?php echo $entry['short_description'][$language['id']];?>' class='medium' tabindex='3'/>
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
								<textarea class='textarea small' tabindex='5' rows='10' cols='50'><?php echo $entry['note'][$language['id']];?></textarea>		
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang['site_background']?><span class='gfield_required'>*</span></label>
				<div id="photo-preview">
					<img id="site_background" language="no" name="bg_header_image" big="<?php echo $entry['bg_header_image']?>" style="max-height:100px; max-width:100px;" src="<?php echo $front_url.$entry['bg_header_image']?>"/>
				</div>
				<div class='ginput_container'>
					<input name='userfile' language="no" id='background' type='file' value='' class='upload' tabindex='3'/>
				</div>
				<a href="javascript:void(0);" class="remove_image"><?php echo $lang['remove_image']?></a>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang['project_bg_color']?></label>
				<div class='ginput_container'>					
					<div id="colorSelector">
						<div style="background-color: rgb(24, 24, 46);"></div>
					</div>
					<input name='bg_color' type='hidden' value='<?php echo $entry['bg_color']?>' class='medium' tabindex='4' />
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["project_menu_font"]?>:</label>
				<div class='ginput_container'>
					<input name='menu_font' language="no" type='text' value='<?php echo $entry['menu_font']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["project_title_color"]?>:</label>
				<div class='ginput_container'>
					<input name='title_color' language="no" type='text' value='<?php echo $entry['title_color']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["project_purpose_color"]?>:</label>
				<div class='ginput_container'>
					<input name='purpose_color' language="no" type='text' value='<?php echo $entry['purpose_color']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["project_banner_bg_color"]?>:</label>
				<div class='ginput_container'>
					<input name='banner_bg_color' language="no" type='text' value='<?php echo $entry['banner_bg_color']?>' class='medium' tabindex='3'/>
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
	<div class="clear"></div>
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
</form>