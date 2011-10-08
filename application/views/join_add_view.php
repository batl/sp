<form method='post'>
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='0'/>
		<input type='hidden' class='gform_hidden' name='entry_id' value='<?php echo $entry_id;?>'/>
		<ul class='gform_fields top_label'>								
			<?php
			switch ($field_name)
			{
				case 'photos_id':
					?>
					<img id="foto_img" name="foto" big="" small="" src=""/>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["photo"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>											
							<input name='usefile' id="foto" type='file' class='medium' tabindex='3'/>
						</div>
					</li>
					<?php
					break;
				case 'videos_id':
					?>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["video"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>											
							<input name='url' language="no" type='text' class='medium' tabindex='3'/>						
						</div>
					</li>
					<?php
					break;
				default:
				?>
				<li class='gfield'><label class='checkbox_label'><?php echo $lang[$field_name]?><span class='gfield_required'>*</span>:</label>
					<div class='ginput_container'>
						<select name="<?php echo $field_name;?>">						
							<?php												
							foreach ($join_entries as $join_entry)
							{
							?>
							<option value="<?php echo $join_entry['id']?>"><?php echo $join_entry['name']?></option>
							<?php
							}						
							?>
						</select>
					</div>
				</li>
				<?php
				break;
			}
			?>
			<?php
			if ($type):
			?>
				<li class='gfield'><label class='checkbox_label'><?php echo $lang["type"]?><span class='gfield_required'>*</span>:</label>
					<div class='ginput_container'>
						<select name="type">						
							<option value="partner"><?php echo $lang['partner']?></option>
							<option value="sponsor"><?php echo $lang['sponsor']?></option>
							<option value="grantor"><?php echo $lang['grantor']?></option>
							<option value="general_sponsor"><?php echo $lang['general_sponsor']?></option>
							<option value="creative_time"><?php echo $lang['creative_time']?></option>
						</select>
					</div>
				</li>
			<?php
			endif;
			?>
		</ul>
	</div>
	<div class='gform_footer top_label'>
		<input type='button' id='gform_submit_button_2' class='button save_entry' value='<?php echo $lang["save"]?>' tabindex='6'/>
	</div>
</form>