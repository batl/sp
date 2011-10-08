<div class="message display_none"></div>
		<form method='post'>
			<div class='gform_heading'>
			</div>
			<div class='gform_body'>									
				<ul class='gform_fields top_label'>								
					<li class='gfield'><label class='gfield_label'><?php echo $lang['site_name']?><span class='gfield_required'>*</span></label>
						<div class='ginput_container'>												
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='site_name' language="<?php echo $language['id'];?>" type='text' value='<?php echo $settings['site_name'][$language['id']];?>' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["keywords"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>					
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='keywords' language="<?php echo $language['id'];?>" type='text' value='<?php echo $settings['keywords'][$language['id']];?>' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>					
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='description' language="<?php echo $language['id'];?>" type='text' value='<?php echo $settings['description'][$language['id']];?>' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang['copy_text']?><span class='gfield_required'>*</span></label>
						<div class='ginput_container'>												
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='copy_text' language="<?php echo $language['id'];?>" type='text' value='<?php echo $settings['copy_text'][$language['id']];?>' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					<hr/>
					<li class='gfield'><label class='gfield_label'><?php echo $lang['site_logo']?><span class='gfield_required'>*</span></label>
						
						<div id="photo-preview">
						<?php 						
							$i = 0;
							foreach ($languages as $language):
							?>
								<img class="site_logo" id="logo_view_<?php echo $i;?>" language="<?php echo $language['id'];?>" name="logo" big="<?php echo $settings['logo'][$language['id']]?>" small="<?php echo $settings['logo_thumb'][$language['id']]?>" src="<?php echo $front_url.$settings['logo'][$language['id']]?>"/>
							<?php	
							$i++;
							endforeach;						
						?>
						</div>
						<div class='ginput_container'>
						<?php 						
							$i = 0;
							foreach ($languages as $language):
							?>							
								<input name='userfile' language="<?php echo $language['id'];?>" id='logo_<?php echo $i;?>' type='file' value='' class='upload' tabindex='3'/>							
							<?php	
							$i++;
							endforeach;						
						?>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang['site_background']?><span class='gfield_required'>*</span></label>
						<div id="photo-preview">
							<img id="site_background" language="no" name="background" big="<?php echo $settings['background']?>" style="max-height:100px; max-width:100px;" src="<?php echo $front_url.$settings['background']?>"/>
						</div>
						<div class='ginput_container'>
							<input name='userfile' language="no" id='background' type='file' value='' class='upload' tabindex='3'/>
						</div>
					</li>
					<li class='gfield'><label class='checkbox_label'><?php echo $lang["default_background"]?>:</label>
						<div class='ginput_container'>
							<input name='default_background' type='checkbox' value='' class='medium' tabindex='4' <?php if ($settings['default_background']) echo 'checked="checked"'?>/>
						</div>
					</li>					
					<li class='gfield'><label class='checkbox_label'><?php echo $lang["bgcolor_trigger"]?>:</label>
						<div class='ginput_container'>
							<input name='bgcolor_trigger' type='checkbox' value='' class='medium' tabindex='4' <?php if ($settings['bgcolor_trigger']) echo 'checked="checked"'?>/>
							<div id="colorSelector">
								<div style="background-color: rgb(24, 24, 46);"></div>
							</div>
							<input name='bg_color' type='hidden' value='<?php echo $settings['bg_color']?>' class='medium' tabindex='4' />
						</div>
					</li>					
					<hr/>
					<li class='gfield'><label class='checkbox_label'><?php echo $lang["theme"]?>:</label>
						<select name="theme">
							<option value="standart" <?php if ($settings['theme'] == 'standart') echo "selected='selected'";?>><?php echo $lang['standart_theme']?></option>
							<option value="black" <?php if ($settings['theme'] == 'black') echo "selected='selected'";?>><?php echo $lang['black_theme']?></option>
							<option value="main" <?php if ($settings['theme'] == 'main') echo "selected='selected'";?>><?php echo $lang['main']?></option>
						</select>
					</li>
					<hr/>
					<!--<li class='gfield'><label class='gfield_label'><?php echo $lang['site_banner']?><span class='gfield_required'>*</span></label>
						<div id="photo-preview">
							<img id="site_banner" language="no" name="site_banner" big="<?php echo $settings['site_banner']?>" style="max-height:100px; max-width:100px;" src="<?php echo $front_url.$settings['site_banner']?>"/>
						</div>
						<div class='ginput_container'>
							<input name='userfile' language="no" id='front_banner' type='file' value='' class='upload' tabindex='3'/>
						</div>
						<span class="remove"><?php echo $lang['remove']?></span>
					</li>-->
					<li class='gfield'><label class='gfield_label'><?php echo $lang['admin_banner']?><span class='gfield_required'>*</span></label>
						<div id="photo-preview">
							<img id="admin_banner" language="no" name="admin_banner" big="<?php echo $settings['admin_banner']?>" style="max-height:100px; max-width:100px;" src="<?php echo $front_url.$settings['admin_banner']?>"/>
						</div>
						<div class='ginput_container'>
							<input name='userfile' language="no" id='back_banner' type='file' value='' class='upload' tabindex='3'/>
						</div>
						<span class="remove"><?php echo $lang['remove']?></span>
					</li>
				</ul>
			</div>
			<div class="clear"></div>
			<hr/><br/>
			<div class='gform_footer top_label'>
				<input type='button' id='main_save' class='button' value='<?php echo $lang['save']?>' tabindex='6' name="submit"/>
				<div id="translates">
					<?php
						foreach ($languages as $item):
						?>
							<a href="javascript:void(0);" id="<?php echo $item['id']?>" class="translate <?php if ($language_id == $item['id']) echo 'activ_translate';?>"><img language="no" src="<?php echo $base_img?>countries/<?php echo $item['flag']?>"/></a>
						<?php
						endforeach;
					?>
				</div>
			</div>
		</form>
