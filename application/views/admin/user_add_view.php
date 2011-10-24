<div class="form">
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='0'/>
		<ul class='gform_fields top_label'>								
			<li class='gfield'><label class='gfield_label'><?php echo $lang["your_name"]?><span class='gfield_required'>*</span>:</label>
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
					<input name='userfile' id="foto" type='file' class='medium' tabindex='3'/>					
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["suname"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<input name='suname' language="<?php echo $language['id']?>" type='text' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["email"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='email' type='text' language='no' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["phone"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='phone' type='text' language='no' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["confirmed"]?>:</label>
				<div class='ginput_container'>
					<input name='confirmed' type='checkbox' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["group"]?>:</label>
				<div class='ginput_container'>
					<select name="group_id">
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
					<span id="create" class="create_new"></span>
				</div>
			</li>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["about_you"]?>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='about' language="<?php echo $language['id'];?>">
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