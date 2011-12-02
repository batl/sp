<form method='post'>
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='<?php echo $entry['id']?>'/>
		<ul class='gform_fields top_label'>								
			<li class='gfield'><label class='gfield_label'><?php echo $lang["your_name"]?><span class='gfield_required'>*</span>:</label>
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
			<li class='gfield'><label class='gfield_label'><?php echo $lang["suname"]?><span class='gfield_required'>*</span>:</label>
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
							<input name='suname' language="<?php echo $value['id'];?>" type='text' value='<?php echo $entry['suname'][$value['id']];?>' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["email"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='email' type='text' language="no" value='<?php echo $entry['email']?>' class='medium' tabindex='3' disabled="disabled"/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["phone"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='phone' type='text' language="no" value='<?php echo $entry['phone']?>' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["confirmed"]?>:</label>
				<div class='ginput_container'>
					<input name='confirmed' type='checkbox' value='' class='medium' tabindex='4' <?php if ($entry['confirmed']) echo 'checked="checked"'?>/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["group"]?>:</label>
				<div class='ginput_container'>
					<select name="group_id">
						<option value="0"><?php echo $lang["no_group"]?></option>
						<?php
						if (!empty($groups))
						{
							foreach ($groups as $group)
							{
							?>
							<option value="<?php echo $group['id']?>" <?php if ($group['id'] == $entry['group_id']) echo 'selected="selected"';?>><?php echo $group['name']?></option>
							<?php
							}
						}
						?>
					</select>
					<span id="create" class="create_new"></span>
				</div>
			</li>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["about_you"]?>:</label>
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
							<div class="textarea" name='about' language="<?php echo $value['id'];?>">
								<textarea class='textarea small' tabindex='5' rows='10' cols='50'><?php echo $entry['about'][$value['id']];?></textarea>		
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