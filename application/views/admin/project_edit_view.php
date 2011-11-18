<form method='post'>
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='<?php echo $entry['id']?>'/>
		<ul class='gform_fields top_label'>
		
			<!-- Name -->
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
			
			<!-- Slug -->
			<li class='gfield'><label class='gfield_label'><?php echo $lang["slug"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='slug' language="no" type='text' value='<?php echo $entry['slug']?>' class='medium' tabindex='3' disabled="disabled"/>
				</div>
			</li>
			
			<!-- Tags -->
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
			
			<!-- Active -->
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["active"]?>:</label>
				<div class='ginput_container'>
					<input name='active' type='checkbox' class='medium' tabindex='4' <?php if ($entry['active']) echo 'checked="checked"'?>/>
				</div>
			</li>
			
			<!-- In process -->
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["in_process"]?>:</label>
				<div class='ginput_container'>
					<input name='in_process' type='checkbox' class='medium' tabindex='4' <?php if ($entry['in_process']) echo 'checked="checked"'?>/>
				</div>
			</li>
			
			<!-- Parent Project -->
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["parent_project"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="project_id">
						<option value="0"><?php echo $lang["no_project"]?></option>
						<?php
						foreach ($projects as $project)
						{
							if ($project['id'] != $entry['id']):
							?>
							<option value="<?php echo $project['id']?>" <?php if ($project['id'] == $entry['project_id']) echo 'selected="selected"';?>><?php echo $project['name']?></option>
							<?php
							endif;
						}
						?>
					</select>
				</div>
			</li>
			
			<!-- Project Top Event -->
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["project_top_event"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="top_event">
						<option value="0"><?php echo $lang["no_events"]?></option>
						<?php
						foreach ($events as $event)
						{
							if ($event['project_id'] == $entry['id']):
							?>
							<option value="<?php echo $event['id']?>" <?php if ($event['id'] == $entry['top_event']) echo 'selected="selected"';?>><?php echo $event['name']?></option>
							<?php
							endif;
						}
						?>
					</select>
				</div>
			</li>
			
			<!-- Project Leaders section -->
			<fieldset>
				<legend><?php echo $lang['project_leaders']?></legend>
				<div class="expanded"> 
				
					<!-- Boss -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["boss"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>					 
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='boss' language="<?php echo $language['id'];?>" type='text' value='<?php echo $entry['boss'][$language['id']];?>' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					
					<!-- Initiators section -->
					<fieldset>
						<legend><?php echo $lang['project_initiators']?></legend>
						<div class="expanded"> 
							<li class='gfield'>
								<div class='ginput_container array' name="initiator">
									<?php					
									$project_initiators = json_decode($entry['initiator'], true);					
									
									foreach ($organizations as $organization)
									{							
										?>							
										<br/>						
										<span class="check_item"><?php echo $organization['name']?></span><input type="checkbox" rel="array" value="<?php echo $organization['id']?>" <?php if (!empty($project_initiators) && is_array($project_initiators) && in_array($organization['id'], $project_initiators)) echo 'checked="checked"';?>/>
										<?php							
									}
									?>					
								</div>
							</li>	
						</div>
					</fieldset>
					
					<!-- Organizators section -->
					<fieldset>
						<legend><?php echo $lang['project_organizators']?></legend>
						<div class="expanded"> 
							<li class='gfield'>
								<div class='ginput_container array' name="organizer">
									<?php					
									$project_organizers = json_decode($entry['organizer'], true);					
									
									foreach ($organizations as $organization)
									{							
										?>							
										<br/>						
										<span class="check_item"><?php echo $organization['name']?></span><input type="checkbox" rel="array" value="<?php echo $organization['id']?>" <?php if (!empty($project_organizers) && is_array($project_organizers) && in_array($organization['id'], $project_organizers)) echo 'checked="checked"';?>/>
										<?php							
									}
									?>					
								</div>
							</li>
						</div>
					</fieldset>
					
					
				</div>
			</fieldset>
			
			<!-- Map section -->
			<fieldset>
				<legend><?php echo $lang['project_map']?></legend>
				<div class="expanded"> 
					<div id="tabs">
						<ul>
							<li><a href="#tabs-1"><?php echo $lang["as_image"]?></a></li>
							<li><a href="#tabs-2"><?php echo $lang["google_maps"]?></a></li>							
						</ul>
						<div id="tabs-1">
							<div id="photo-preview">
								<img id="project_map_img" language="no" name="map_img" big="<?php echo $entry['map_img']?>" style="max-height:100px; max-width:100px;" src="<?php echo $front_url.$entry['map_img']?>"/>
							</div>
							<div class='ginput_container'>
								<input name='userfile' language="no" id='map_img' type='file' value='' class='upload' tabindex='3'/>
							</div>
							<a href="javascript:void(0);" class="remove_image"><?php echo $lang['remove_image']?></a>														
						</div>
						<div id="tabs-2">
							<div id="map_canvas" style="width:100%; height:300px;"></div>
							<input type='hidden' class='gform_hidden' name='map' value='<?php echo $entry['map']?>'/>
						</div>						
					</div>					
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
				</div>
			</fieldset>		
			
			<!-- Info section -->
			<fieldset>
				<legend><?php echo $lang['project_info']?></legend>
				<div class="expanded">	
				
					<!-- Logo -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["logo"]?><span class='gfield_required'>*</span>:</label>
						<img id="foto_img" name="logo" big="<?php echo $entry['logo']?>" small="<?php echo $entry['thumb']?>" src="<?php echo $front_url.$entry['thumb']?>"/>
						<div class='ginput_container'>
							<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
						</div>
						<a href="javascript:void(0);" class="remove_image"><?php echo $lang['remove_image']?></a>
					</li>
					
					<!-- Short description -->
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
					
					<!-- Purpose -->
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
					
					<!-- Note -->
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
					
					<!-- Date Start -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["date_start"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<input name='date_start' language="no" type='text' value='<?php if (!empty($entry['date_start']) && $entry['date_start'] != '0000-00-00') echo $entry['date_start']?>' class='medium picker' tabindex='3'/>
						</div>
					</li>
					
					<!-- Date End -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["date_end"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<input name='date_end' language="no" type='text' value='<?php if (!empty($entry['date_end']) && $entry['date_end'] != '0000-00-00') echo $entry['date_end']?>' class='medium picker' tabindex='3'/>
						</div>
					</li>
					
					<!-- Territory section -->
					<fieldset>
						<legend><?php echo $lang['project_territory']?></legend>
						<div class="expanded">
							
							<!-- Project Territories -->
							<li class='gfield'>
								<div class='ginput_container array' name="territory">
									<?php					
									$project_territories = json_decode($entry['territory'], true);					
									
									foreach ($territories as $territory)
									{							
										?>							
										<br/>						
										<span class="check_item"><?php echo $territory['name']?></span><input type="checkbox" rel="array" value="<?php echo $territory['id']?>" <?php if (!empty($project_territories) && is_array($project_territories) && in_array($territory['id'], $project_territories)) echo 'checked="checked"';?>/>
										<?php							
									}
									?>					
								</div>
							</li>	
						</div>
					</fieldset>
					
					<!-- Contacts -->
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
				</div>
			</fieldset>
			
			<!-- Design section -->
			<fieldset>
				<legend><?php echo $lang['project_design']?></legend>
				<div class="expanded">					
				
					<!-- Banner -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang['project_banner']?><span class='gfield_required'>*</span></label>
						<div id="photo-preview">
							<img id="project_banner" language="no" name="banner" big="<?php echo $entry['banner']?>" style="max-height:100px; max-width:100px;" src="<?php echo $front_url.$entry['banner']?>"/>
						</div>
						<div class='ginput_container'>
							<input name='userfile' language="no" id='banner' type='file' value='' class='upload' tabindex='3'/>
						</div>
						<a href="javascript:void(0);" class="remove_image"><?php echo $lang['remove_image']?></a>
					</li>
					
					<!-- Project Page Background Image -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang['site_background']?><span class='gfield_required'>*</span></label>
						<div id="photo-preview">
							<img id="site_background" language="no" name="bg_header_image" big="<?php echo $entry['bg_header_image']?>" style="max-height:100px; max-width:100px;" src="<?php echo $front_url.$entry['bg_header_image']?>"/>
						</div>
						<div class='ginput_container'>
							<input name='userfile' language="no" id='background' type='file' value='' class='upload' tabindex='3'/>
						</div>
						<a href="javascript:void(0);" class="remove_image"><?php echo $lang['remove_image']?></a>
					</li>
					
					<!-- Project Page Background Color -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang['project_bg_color']?></label>
						<div class='ginput_container'>					
							<div id="colorSelector">
								<div style="background-color: rgb(24, 24, 46);"></div>
							</div>
							<input name='bg_color' type='hidden' value='<?php echo $entry['bg_color']?>' class='medium' tabindex='4' />
						</div>
					</li>
					
					<!-- Project Page Menu Background Color -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["project_menu_font"]?>:</label>
						<div class='ginput_container'>
							<input name='menu_font' language="no" type='text' value='<?php echo $entry['menu_font']?>' class='medium' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Page Title Color -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["project_title_color"]?>:</label>
						<div class='ginput_container'>
							<input name='title_color' language="no" type='text' value='<?php echo $entry['title_color']?>' class='medium' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Page Purpose Color -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["project_purpose_color"]?>:</label>
						<div class='ginput_container'>
							<input name='purpose_color' language="no" type='text' value='<?php echo $entry['purpose_color']?>' class='medium' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Page Apply Select Background Image -->
					<li class='gfield'><label class='checkbox_label'><?php echo $lang["apply_background"]?>:</label>
						<div class='ginput_container'>
							<input name='apply_bg' type='checkbox' class='medium' tabindex='4' <?php if ($entry['apply_bg']) echo 'checked="checked"'?>/>
						</div>
					</li>			
					
					<!-- Project Page Background Image -->
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
				</div>
			</fieldset>
			
			<!-- Places section -->
			<fieldset>
				<legend><?php echo $lang['project_places']?></legend>
				<div class="expanded">
					
					<!-- Project Places -->
					<li class='gfield'>
						<div class='ginput_container array' name="place">
							<?php					
							$project_places = json_decode($entry['place'], true);					
							
							foreach ($places as $place)
							{							
								?>							
								<br/>						
								<span class="check_item"><?php echo $place['name']?></span><input type="checkbox" rel="array" value="<?php echo $place['id']?>" <?php if (!empty($project_places) && is_array($project_places) && in_array($place['id'], $project_places)) echo 'checked="checked"';?>/>
								<?php							
							}
							?>					
						</div>
					</li>	
				</div>
			</fieldset>
			
			<!-- Categories section -->
			<fieldset>
				<legend><?php echo $lang['project_categories']?></legend>
				<div class="expanded">
				
					<!-- Project Categories -->
					<li class='gfield'>
						<div class='ginput_container array' name="category_id">
							<?php					
							$project_categories = json_decode($entry['category_id'], true);					
							
							foreach ($groups as $group)
							{							
								?>							
								<br/>						
								<span class="check_item"><?php echo $group['name']?></span><input type="checkbox" rel="array" value="<?php echo $group['id']?>" <?php if (!empty($project_categories) && is_array($project_categories) && in_array($group['id'], $project_categories)) echo 'checked="checked"';?>/>
								<?php							
							}
							?>					
						</div>
					</li>
				</div>
			</fieldset>
			
			<!-- Links section -->
			<fieldset>
				<legend><?php echo $lang['project_links']?></legend>
				<div class="expanded">					
					
					<!-- Project Facebook Link -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["facebook_link"]?>:</label>
						<div class='ginput_container'>
							<input name='facebook_link' language="no" type='text' value='<?php echo $entry['facebook_link']?>' class='medium' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Twitter Link -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["twitter_link"]?>:</label>
						<div class='ginput_container'>
							<input name='twitter_link' language="no" type='text' value='<?php echo $entry['twitter_link']?>' class='medium' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Vkontakte Link -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["vkontakte_link"]?>:</label>
						<div class='ginput_container'>
							<input name='vkontakte_link' language="no" type='text' value='<?php echo $entry['vkontakte_link']?>' class='medium' tabindex='3'/>
						</div>
					</li>						
				</div>
			</fieldset>			
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