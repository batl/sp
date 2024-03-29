<form method='post'>
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='<?php echo $entry['id']?>'/>	
		<input type="hidden" class='gform_hidden' name='project_id' value='<?php echo $project_id?>'/>		
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
							<input name='name' language="<?php echo $value['id']?>" type='text' value="<?php echo $entry['name'][$value['id']];?>" class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["date_start"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='date_start' language="no" type='text' value='<?php if (!empty($entry['date_start']) && $entry['date_start'] != '0000-00-00') echo $entry['date_start'];?>' class='medium picker' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["date_end"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='date_end' language="no" type='text' value='<?php if (!empty($entry['date_end']) && $entry['date_end'] != '0000-00-00') echo $entry['date_end'];?>' class='medium picker' tabindex='3'/>
				</div>
			</li>		
			<?php if ($project_id == 'undefined'):?>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["on_page"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="on_page">
						<option value="-1"><?php echo $lang["hide"]?></option>
						<option value="0" <?php if (!$entry['on_page']) echo 'selected="selected"';?>><?php echo $lang["menu_home"]?></option>
						<?php
						foreach ($pages as $page)
						{
						?>
						<option value="<?php echo $page['id']?>" <?php if ($page['id'] == $entry['on_page']) echo 'selected="selected"';?>><?php echo $page['name']?></option>
						<?php
						}
						?>
					</select>	
				</div>
			</li>
			<?php endif;?>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["active"]?>:</label>
				<div class='ginput_container'>
					<input name='active' type='checkbox' class='medium' tabindex='4' <?php if ($entry['active']) echo 'checked="checked"'?>/>
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