<div class="form">
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='0'/>
		<input type="hidden" class='gform_hidden' name='project_id' value='<?php echo $project_id?>'/>
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
			<img id="foto_img" name="logo" big="" small="" src=""/>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["foto"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["parent_event"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="event_id">
						<option value="0"><?php echo $lang["no_event"]?></option>
						<?php
						foreach ($evnts as $event)
						{
						?>
						<option value="<?php echo $event['id']?>"><?php echo $event['name']?></option>
						<?php
						}
						?>
					</select>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["group"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="type">
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
					<span id="create_type" class="create_new"></span>
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
			<li class='gfield'><label class='gfield_label'><?php echo $lang["number_of_sessions"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='number_of_sessions' language="no" type='text' value='' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["schedule"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='schedule' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["price"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='price' language="<?php echo $language['id'];?>">
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
			<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='description' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["report"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='report' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'></textarea>
							</div>
							<?php								
						endforeach;						
					?>
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