<div class="form">
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='0'/>
		<input type='hidden' class='gform_hidden' name='user_id' value='<?php echo $admin_info['id']?>'/>
		<ul class='gform_fields top_label'>								
			<!-- Name -->
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
			
			<!-- Slug -->
			<li class='gfield'><label class='gfield_label'><?php echo $lang["slug"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='slug' language="no" type='text' value='' class='medium' tabindex='3'/>
				</div>
			</li>
			
			<!-- Tags -->
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
			
			<!-- Active -->
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["active"]?>:</label>
				<div class='ginput_container'>
					<input name='active' type='checkbox' class='medium' tabindex='4'/>
				</div>
			</li>
			
			<!-- In process -->
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["in_process"]?>:</label>
				<div class='ginput_container'>
					<input name='in_process' type='checkbox' class='medium' tabindex='4'/>
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
							?>
							<option value="<?php echo $project['id']?>"><?php echo $project['name']?></option>
							<?php						
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
									<input name='boss' language="<?php echo $language['id'];?>" type='text' value='' class='medium' tabindex='3'/>
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
									foreach ($organizations as $organization)
									{							
										?>							
										<br/>						
										<span style="display:block; width:300px; float:left; clear:both;"><?php echo $organization['name']?></span><input type="checkbox" rel="array" value="<?php echo $organization['id']?>" />
										<?php							
									}
									?>					
								</div>
							</li>	
							<span id="create_initiator" class="add_new"><?php echo $lang['add_new_record']?></span>
						</div>
					</fieldset>
					
					<!-- Organizators section -->
					<fieldset>
						<legend><?php echo $lang['project_organizators']?></legend>
						<div class="expanded"> 
							<li class='gfield'>
								<div class='ginput_container array' name="organizer">
									<?php																										
									foreach ($organizations as $organization)
									{							
										?>							
										<br/>						
										<span style="display:block; width:300px; float:left; clear:both;"><?php echo $organization['name']?></span><input type="checkbox" rel="array" value="<?php echo $organization['id']?>"/>
										<?php							
									}
									?>					
								</div>
							</li>
							<span id="create_organizator" class="add_new"><?php echo $lang['add_new_record']?></span>
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
								<img id="project_map_img" language="no" name="map_img" big="" style="max-height:100px; max-width:100px;" src=""/>
							</div>
							<div class='ginput_container'>
								<input name='userfile' language="no" id='map_img' type='file' value='' class='upload' tabindex='3'/>
							</div>							
						</div>
						<div id="tabs-2">
							<div id="map_canvas" style="width:100%; height:300px;"></div>
							<input type='hidden' class='gform_hidden' name='map' value=''/>
						</div>						
					</div>
					
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
				</div>
			</fieldset>
			
			<!-- Info section -->
			<fieldset>
				<legend><?php echo $lang['project_info']?></legend>
				<div class="expanded">					
					
					<!-- Logo -->										
					<li class='gfield'><label class='gfield_label'><?php echo $lang["logo"]?><span class='gfield_required'>*</span>:</label>
						<img id="foto_img" name="logo" big="" small="" src=""/>
						<div class='ginput_container'>
							<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
						</div>
					</li>
					
					<!-- Short description -->
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
					
					<!-- Purpose -->					
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
					
					<!-- Note -->					
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
					
					<!-- Date Start -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["date_start"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<input name='date_start' language="no" type='text' value='' class='medium picker' tabindex='3'/>
						</div>
					</li>
					
					<!-- Date End -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["date_end"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>
							<input name='date_end' language="no" type='text' value='' class='medium picker' tabindex='3'/>
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
									foreach ($territories as $territory)
									{							
										?>							
										<br/>						
										<span class="check_item"><?php echo $territory['name']?></span><input type="checkbox" rel="array" value="<?php echo $territory['id']?>" />
										<?php							
									}
									?>					
								</div>
							</li>	
							<span id="create_territory" class="add_new"><?php echo $lang['add_new_record']?></span>
						</div>
					</fieldset>
					
					<!-- Contacts -->
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
				</div>
			</fieldset>
			
			<!-- Design section -->
			<fieldset>
				<legend><?php echo $lang['project_design']?></legend>
				<div class="expanded">					
					
					<!-- Banner -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang['project_banner']?><span class='gfield_required'>*</span></label>
						<div id="photo-preview">
							<img id="project_banner" language="no" name="banner" big="" style="max-height:100px; max-width:100px;" src=""/>
						</div>
						<div class='ginput_container'>
							<input name='userfile' language="no" id='banner' type='file' value='' class='upload' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Page Background Image -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang['site_background']?><span class='gfield_required'>*</span></label>
						<div id="photo-preview">
							<img id="site_background" language="no" name="bg_image" big="" style="max-height:100px; max-width:100px;" src=""/>
						</div>
						<div class='ginput_container'>
							<input name='userfile' language="no" id='background' type='file' value='' class='upload' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Page Background Color -->
					<li class='gfield'>
						<div class='ginput_container'>					
							<div id="colorSelector">
								<div style="background-color: rgb(24, 24, 46);"></div>
							</div>
							<input name='bg_color' type='hidden' value='#fff' class='medium' tabindex='4' />
						</div>
					</li>
					
					<!-- Project Page Menu Background Color -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["project_menu_font"]?>:</label>
						<div class='ginput_container'>
							<input name='menu_font' language="no" type='text' value='#ffffff' class='medium' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Page Title Color -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["project_title_color"]?>:</label>
						<div class='ginput_container'>
							<input name='title_color' language="no" type='text' value='#ffffff' class='medium' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Page Purpose Color -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["project_purpose_color"]?>:</label>
						<div class='ginput_container'>
							<input name='purpose_color' language="no" type='text' value='#ffffff' class='medium' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Page Apply Select Background Image -->
					<li class='gfield'><label class='checkbox_label'><?php echo $lang["apply_background"]?>:</label>
						<div class='ginput_container'>
							<input name='apply_bg' type='checkbox' class='medium' tabindex='4'/>
						</div>
					</li>			
					
					<!-- Project Page Background Image -->
					<li class='gfield'>
						<div class='ginput_container'>
							<div id="project_bg">
								<div id="project_bg_preview" style="background:url('<?php echo $front_url?>static/images/background/base/<?php echo $backgrounds['base'][0]?>');"></div>
								<input name='bg_image' type='hidden' value='' class='medium' tabindex='4' />
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
						<div class='ginput_container'  name='place'>
							<?php
							foreach ($places as $place)
							{
								?>
								<br/>
								<span style="display:block; width:300px; float:left;"><?php echo $place['name']?></span><input type="checkbox" rel="array" value="<?php echo $place['id']?>"/>
								<?php
							}
							?>							
						</div>
					</li>
					<span id="create_place" class="add_new"><?php echo $lang['add_new_record']?></span>
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
							foreach ($groups as $group)
							{
								?>
								<br/>
								<span style="display:block; width:300px; float:left;"><?php echo $group['name']?></span><input type="checkbox" rel="array" value="<?php echo $group['id']?>"/>
								<?php
							}
							?>
						</div>
					</li>
					<span id="create_category" class="add_new"><?php echo $lang['add_new_record']?></span>
				</div>
			</fieldset>								
			
			<!-- Links section -->
			<fieldset>
				<legend><?php echo $lang['project_links']?></legend>
				<div class="expanded">					
				
					<!-- Project Facebook Link -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["facebook_link"]?>:</label>
						<div class='ginput_container'>
							<input name='facebook_link' language="no" type='text' value='' class='medium' tabindex='3'/>
						</div>
					</li>			
					
					<!-- Project Twitter Link -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["twitter_link"]?>:</label>
						<div class='ginput_container'>
							<input name='twitter_link' language="no" type='text' value='' class='medium' tabindex='3'/>
						</div>
					</li>
					
					<!-- Project Vkontakte Link -->
					<li class='gfield'><label class='gfield_label'><?php echo $lang["vkontakte_link"]?>:</label>
						<div class='ginput_container'>
							<input name='vkontakte_link' language="no" type='text' value='' class='medium' tabindex='3'/>
						</div>
					</li>		
					
				</div>
			</fieldset>
			
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