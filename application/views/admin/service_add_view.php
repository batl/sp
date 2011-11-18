<div class="form">
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='0'/>
		<ul class='gform_fields top_label'>								
			<li class='gfield'><label class='gfield_label'><?php echo $lang["name"]?><span class='gfield_required'>*</span>:</label>
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
			<img id="foto_img" name="foto" big="" small="" src=""/>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["foto"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["tags"]?><span class='gfield_required'>*</span>:</label>
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
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["supplier"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="supplier">
						<option value="0"><?php echo $lang["no_organization"]?></option>
						<?php
						foreach ($organizations as $organization)
						{
						?>
						<option value="<?php echo $organization['id']?>"><?php echo $organization['name']?></option>
						<?php
						}
						?>
					</select>
					<span id="create_organization" class="create_new"></span>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["price"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='price' language="no" type='text' value='' class='medium' tabindex='3'/>
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
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["project_result"]?>:</label>
				<div class='ginput_container'>
					<select name="project_result">
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
			<li class='gfield'><label class='gfield_label'><?php echo $lang["condition"]?>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='condition' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'/></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["terms_of_service"]?>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='terms' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'/></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>		
			<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='note' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'/></textarea>
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