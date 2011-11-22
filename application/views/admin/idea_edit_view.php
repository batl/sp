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
			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["author"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<input name='author' language="<?php echo $language['id']?>" type='text' value='<?php echo $entry['author'][$language['id']];?>' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
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
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["scope"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="scope">
						<option value="0"><?php echo $lang["no_scope"]?></option>
						<?php
						foreach ($scopes as $scope)
						{
						?>
						<option value="<?php echo $scope['id']?>" <?php if ($scope['id'] == $entry['scope']) echo 'selected="selected"';?>><?php echo $scope['name']?></option>
						<?php
						}
						?>
					</select>	
					<span id="create_scope" class="create_new"></span>
				</div>
			</li>			
			
			<!-- Visible -->
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["active"]?>:</label>
				<div class='ginput_container'>
					<input name='visible' type='checkbox' class='medium' tabindex='4' <?php if ($entry['visible']) echo 'checked="checked"'?>/>
				</div>
			</li>
			
			<!-- Categories section -->
			<fieldset>
				<legend><?php echo $lang['idea_categories']?></legend>
				<div class="expanded">
				
					<!-- Project Categories -->
					<li class='gfield'>
						<div class='ginput_container array' name="category_ids">
							<?php					
							$idea_categories = json_decode($entry['category_ids'], true);					
							
							foreach ($groups as $group)
							{							
								?>							
								<br/>						
								<span class="check_item"><?php echo $group['name']?></span><input type="checkbox" rel="array" value="<?php echo $group['id']?>" <?php if (!empty($idea_categories) && is_array($idea_categories) && in_array($group['id'], $idea_categories)) echo 'checked="checked"';?>/>
								<?php							
							}
							?>					
						</div>
					</li>
					<span id="create_category" class="add_new"><?php echo $lang['add_new_record']?></span>
				</div>
			</fieldset>
			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='description' language="<?php echo $language['id'];?>">
								<textarea class='textarea small mceEditor' tabindex='5' rows='10' cols='50'><?php echo $entry['description'][$language['id']];?></textarea>		
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