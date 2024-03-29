<form method='post'>
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='<?php echo $entry['id']?>'/>
		<ul class='gform_fields top_label'>								
			<li class='gfield'><label class='gfield_label'><?php echo $lang["name"]?><span class='gfield_required'>*</span>:</label>
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
			<img id="foto_img" name="foto" big="<?php echo $entry['foto']?>" small="<?php echo $entry['thumb']?>" src="<?php echo $front_url.$entry['thumb']?>"/>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["foto"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
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
						<option value="<?php echo $organization['id']?>" <?php if ($organization['id'] == $entry['supplier']) echo 'selected="selected"';?>><?php echo $organization['name']?></option>
						<?php
						}
						?>
					</select>
					<span id="create_organization" class="create_new"></span>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["price"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='price' language="no" type='text' value='<?php echo $entry['price']?>' class='medium' tabindex='3'/>
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
						<option value="<?php echo $group['id']?>" <?php if ($group['id'] == $entry['type']) echo 'selected="selected"';?>><?php echo $group['name']?></option>
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
						<option value="<?php echo $project['id']?>" <?php if ($project['id'] == $entry['project_result']) echo 'selected="selected"';?>><?php echo $project['name']?></option>
						<?php
						}
						?>
					</select>
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