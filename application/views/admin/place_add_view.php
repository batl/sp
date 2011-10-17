<form method='post'>
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
			<li class='gfield'><label class='gfield_label'><?php echo $lang["road_plan"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='road_plan' language="no" type='file' value='' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["phones"]?>:</label>
				<div class='ginput_container'>
					<input name='phones' language="no" type='text' value='' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["place_type"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="place_type">
						<option value="0"><?php echo $lang["no_place_type"]?></option>
						<?php
						foreach ($place_types as $place_type)
						{
						?>
						<option value="<?php echo $place_type['id']?>"><?php echo $place_type['name']?></option>
						<?php
						}
						?>
					</select>
					<span id="create_place_type" class="create_new"></span>
				</div>
			</li>		
			<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?>: </label>
				<div class='ginput_container'>					
					<?php 							
						foreach ($languages as $language):
							?>
							<div class="textarea" name='note' language="<?php echo $language['id'];?>">
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
</form>