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
							<input name='name' language="<?php echo $language['id']?>" type='text' class='medium' tabindex='3'/>
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
							<input name='tags' language="<?php echo $language['id']?>" type='text' class='medium' tabindex='3'/>
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
						<option value="<?php echo $scope['id']?>"><?php echo $scope['name']?></option>
						<?php
						}
						?>
					</select>	
					<span id="create_scope" class="create_new"></span>
				</div>
			</li>						
			<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='description' language="<?php echo $language['id'];?>">
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