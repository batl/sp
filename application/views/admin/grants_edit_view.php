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
			<li class='gfield'><label class='gfield_label'><?php echo $lang["deadline"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='deadline' language="no" type='text' value='<?php echo $entry['deadline']?>' class='medium picker' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["links"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='links' language="no" type='text' value='<?php echo $entry['links']?>' class='medium' tabindex='3'/>
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
						<option value="<?php echo $scope['id']?>"><?php echo $scope['name']?></option>
						<?php
						}
						?>
					</select>
					<span id="create_scope" class="create_new"></span>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["grantor"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="grantor">
						<option value="0"><?php echo $lang["no_grantor"]?></option>
						<?php
						foreach ($grantors as $grantor)
						{
						?>
						<option value="<?php echo $grantor['id']?>" <?php if ($grantor['id'] == $entry['grantor']) echo 'selected="selected"';?>><?php echo $grantor['name']?></option>
						<?php
						}
						?>
					</select>
				</div>
			</li>		
			<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>: </label>
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