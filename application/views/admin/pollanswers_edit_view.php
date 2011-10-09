<form method='post'>
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='<?php echo $entry['id']?>'/>
		<input type="hidden" class='gform_hidden' name='poll_id' value='<?php echo $poll_id?>'/>
		<ul class='gform_fields top_label'>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["answer"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<input name='name' language="<?php echo $language['id'];?>" type='text' value='<?php echo $entry['name'][$language['id']];?>' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>			
			<img id="foto_img" name="image" big="<?php echo $entry['image']?>" small="<?php echo $entry['thumb']?>" src="<?php echo $front_url.$entry['thumb']?>"/>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["answer_image"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='userfile' id="foto" type='file' value='' class='medium' tabindex='3'/>					
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