<form method='post'>
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='<?php echo $entry['id']?>'/>
		<ul class='gform_fields top_label'>								
			<li class='gfield'><label class='gfield_label'><?php echo $lang["title"]?><span class='gfield_required'>*</span>:</label>
				<span class="to_copy">
					<?php
					foreach ($languages as $item):
						?>
							<a href="javascript:void(0);" id="<?php echo $item['id']?>" class="flag <?php if ($language == $item['name']) echo 'activ_to_copied';?>"><img language="no" src="<?php echo $base_img?>flags/<?php echo $item['flag']?>" title="<?php echo $lang['copy_this']?>"/></a>
						<?php
						endforeach;
					?>&nbsp;<span class="copy_message"><?php echo $lang['copied']?></span>
				</span>
				<div class='ginput_container'>
					<?php 						
						foreach ($languages as $value):
							?>
							<input name='name' language="<?php echo $value['id'];?>" type='text' value='<?php echo $entry['name'][$value['id']];?>' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<img id="foto_img" name="logo" big="<?php echo $entry['logo']?>" small="<?php echo $entry['thumb']?>" src="<?php echo $front_url.$entry['thumb']?>"/>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["logo"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["address"]?><span class='gfield_required'>*</span>:</label>
				<span class="to_copy">
					<?php
					foreach ($languages as $item):
						?>
							<a href="javascript:void(0);" id="<?php echo $item['id']?>" class="flag <?php if ($language == $item['name']) echo 'activ_to_copied';?>"><img language="no" src="<?php echo $base_img?>flags/<?php echo $item['flag']?>" title="<?php echo $lang['copy_this']?>"/></a>
						<?php
						endforeach;
					?>&nbsp;<span class="copy_message"><?php echo $lang['copied']?></span>
				</span>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $value):
							?>
							<input name='address' language="<?php echo $value['id'];?>" type='text' value='<?php echo $entry['address'][$value['id']];?>' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["place"]?>:</label>
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
			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["boss"]?><span class='gfield_required'>*</span>:</label>
				<span class="to_copy">
					<?php
					foreach ($languages as $item):
						?>
							<a href="javascript:void(0);" id="<?php echo $item['id']?>" class="flag <?php if ($language == $item['name']) echo 'activ_to_copied';?>"><img language="no" src="<?php echo $base_img?>flags/<?php echo $item['flag']?>" title="<?php echo $lang['copy_this']?>"/></a>
						<?php
						endforeach;
					?>&nbsp;<span class="copy_message"><?php echo $lang['copied']?></span>
				</span>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $value):
							?>
							<input name='boss' language="<?php echo $value['id'];?>" type='text' value='<?php echo $entry['boss'][$value['id']];?>' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["phone"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='phone' language="no" type='text' value='<?php echo $entry['phone']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["email"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='email' language="no" type='text' value='<?php echo $entry['email']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["sites"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='sites' language="no" type='text' value='<?php echo $entry['sites']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			
			<!-- Scope section -->
			<fieldset>
				<legend><?php echo $lang['scope']?></legend>
				<div class="expanded">
					
					<!-- Organization scopes -->
					<li class='gfield'>
						<div class='ginput_container array' name="scope">
							<?php																						
							foreach ($scopes as $scope)
							{							
								?>							
								<br/>						
								<span class="check_item"><?php echo $scope['name']?></span><input type="checkbox" rel="array" value="<?php echo $scope['id']?>" <?php if (!empty($entry['scope']) && is_array($entry['scope']) && in_array($scope['id'], $entry['scope'])) echo 'checked="checked"';?>/>
								<?php							
							}
							?>					
						</div>
					</li>	
					<span id="create_scope" class="add_new"><?php echo $lang['add_new_record']?></span>
				</div>
			</fieldset>
			
			<!-- Activities section -->
			<fieldset>
				<legend><?php echo $lang['activities']?></legend>
				<div class="expanded">
					
					<!-- Organization activities -->
					<li class='gfield'>
						<div class='ginput_container array' name="activities">
							<?php					
							$organization_activities = json_decode($entry['activities'], true);					
							
							foreach ($activities as $activity)
							{							
								?>							
								<br/>						
								<span class="check_item"><?php echo $activity['name']?></span><input type="checkbox" rel="array" value="<?php echo $activity['id']?>" <?php if (!empty($organization_activities) && is_array($organization_activities) && in_array($activity['id'], $organization_activities)) echo 'checked="checked"';?>/>
								<?php							
							}
							?>					
						</div>
					</li>	
					<span id="create_activity" class="add_new"><?php echo $lang['add_new_record']?></span>
				</div>
			</fieldset>
			
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["grantor"]?>:</label>
				<div class='ginput_container'>
					<input name='grantor' type='checkbox' value='' class='medium' tabindex='4' <?php if ($entry['grantor']) echo 'checked="checked"'?>/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["investor"]?>:</label>
				<div class='ginput_container'>
					<input name='investor' type='checkbox' value='' class='medium' tabindex='4' <?php if ($entry['investor']) echo 'checked="checked"'?>/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["individual"]?>:</label>
				<div class='ginput_container'>
					<input name='individual' type='checkbox' value='' class='medium' tabindex='4' <?php if ($entry['individual']) echo 'checked="checked"'?>/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["developer"]?>:</label>
				<div class='ginput_container'>
					<input name='developer' type='checkbox' value='' class='medium' tabindex='4' <?php if ($entry['developer']) echo 'checked="checked"'?>/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["sponsor"]?>:</label>
				<div class='ginput_container'>
					<input name='sponsor' type='checkbox' value='' class='medium' tabindex='4' <?php if ($entry['sponsor']) echo 'checked="checked"'?>/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["creative"]?>:</label>
				<div class='ginput_container'>
					<input name='creative' type='checkbox' value='' class='medium' tabindex='4' <?php if ($entry['creative']) echo 'checked="checked"'?>/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["couche"]?>:</label>
				<div class='ginput_container'>
					<input name='couche' type='checkbox' value='' class='medium' tabindex='4' <?php if ($entry['couche']) echo 'checked="checked"'?>/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>:</label>
				<span class="to_copy">
					<?php
					foreach ($languages as $item):
						?>
							<a href="javascript:void(0);" id="<?php echo $item['id']?>" class="flag <?php if ($language == $item['name']) echo 'activ_to_copied';?>"><img language="no" src="<?php echo $base_img?>flags/<?php echo $item['flag']?>" title="<?php echo $lang['copy_this']?>"/></a>
						<?php
						endforeach;
					?>&nbsp;<span class="copy_message"><?php echo $lang['copied']?></span>
				</span>
				<div class='ginput_container'>
					<?php 						
						foreach ($languages as $value):
							?>
							<div class="textarea" name='description' language="<?php echo $value['id'];?>">
								<textarea class='textarea small' tabindex='5' rows='10' cols='50'><?php echo $entry['description'][$value['id']]?></textarea>
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
</form>