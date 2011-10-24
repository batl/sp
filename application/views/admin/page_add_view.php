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
			<li class='gfield'><label class='gfield_label'><?php echo $lang["meta"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<?php 
						foreach ($languages as $language):
							?>
							<input name='meta' language="<?php echo $language['id']?>" type='text' value='' class='medium' tabindex='3'/>
							<?php								
						endforeach;
					?>					
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["description"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<?php 
						foreach ($languages as $language):
							?>
							<input name='description' language="<?php echo $language['id']?>" type='text' value='' class='medium' tabindex='3'/>
							<?php								
						endforeach;
					?>					
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["slug"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<input name='slug' language="no" type='text' value='' class='medium' tabindex='3'/>					
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["in_footer"]?>:</label>
				<div class='ginput_container'>
					<input name='in_footer' type='checkbox' value='' class='medium' tabindex='4'/>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["in_header"]?>:</label>
				<div class='ginput_container'>
					<input name='in_header' type='checkbox' value='' class='medium' tabindex='3'/>
				</div>
			</li>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["content"]?>: </label>
				<div class='ginput_container'>
					<div class='ginput_container'>
						<?php 							
							foreach ($languages as $language):
								?>
								<div class="textarea" name='body' language="<?php echo $language['id'];?>">
									<textarea class='textarea small' tabindex='5' rows='10' cols='50'></textarea>
								</div>
								<?php								
							endforeach;							
						?>											
					</div>					
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