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
			<li class='gfield'><label class='gfield_label'><?php echo $lang["slug"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='slug' language="no" type='text' value='<?php echo $entry['slug']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			<img id="foto_img" name="logo" big="<?php echo $entry['logo']?>" small="<?php echo $entry['thumb']?>" src="<?php echo $front_url.$entry['thumb']?>"/>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["foto"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang['banner']?><span class='gfield_required'>*</span></label>
				<div id="photo-preview">
					<img id="project_banner" language="no" name="banner" big="<?php echo $entry['banner']?>" style="max-height:100px; max-width:100px;" src="<?php echo $front_url.$entry['banner']?>"/>
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
					<input name='date_start' language="no" type='text' value='<?php echo $entry['date_start']?>' class='medium picker' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["date_end"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='date_end' language="no" type='text' value='<?php echo $entry['date_end']?>' class='medium picker' tabindex='3'/>
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
						<option value="<?php echo $group['id']?>" <?php if ($group['id'] == $entry['category_id']) echo 'selected="selected"';?>><?php echo $group['name']?></option>
						<?php
						}
						?>
					</select>	
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
					<img id="site_background" language="no" name="bg_image" big="<?php echo $entry['bg_image']?>" style="max-height:100px; max-width:100px;" src="<?php echo $front_url.$entry['bg_image']?>"/>
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
					<input name='bg_color' type='hidden' value='<?php echo $entry['bg_color']?>' class='medium' tabindex='4' />
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
</form>