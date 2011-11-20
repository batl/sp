<div class="form">
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
			<img id="foto_img" name="logo" big="" small="" src=""/>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["logo"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
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
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["place"]?>:</label>
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
			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["boss"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<input name='boss' language="<?php echo $language['id']?>" type='text' value='' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["phone"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='phone' language="no" type='text' value='' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["email"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='email' language="no" type='text' value='' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["sites"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='sites' language="no" type='text' value='' class='medium' tabindex='3'/>
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
								<span class="check_item"><?php echo $scope['name']?></span><input type="checkbox" rel="array" value="<?php echo $scope['id']?>" />
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
							foreach ($activities as $activity)
							{							
								?>							
								<br/>						
								<span class="check_item"><?php echo $activity['name']?></span><input type="checkbox" rel="array" value="<?php echo $activity['id']?>" />
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
					<input name='grantor' type='checkbox' value='' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["investor"]?>:</label>
				<div class='ginput_container'>
					<input name='investor' type='checkbox' value='' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["individual"]?>:</label>
				<div class='ginput_container'>
					<input name='individual' type='checkbox' value='' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["developer"]?>:</label>
				<div class='ginput_container'>
					<input name='developer' type='checkbox' value='' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["sponsor"]?>:</label>
				<div class='ginput_container'>
					<input name='sponsor' type='checkbox' value='' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["creative"]?>:</label>
				<div class='ginput_container'>
					<input name='creative' type='checkbox' value='' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["couche"]?>:</label>
				<div class='ginput_container'>
					<input name='couche' type='checkbox' value='' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>:</label>
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