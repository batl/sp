<div class="form">
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='<?php echo $entry['id']?>'/>
		<input type='hidden' class='gform_hidden' name='entry_id' value='<?php echo $entry_id;?>'/>
		<ul class='gform_fields top_label'>								
			<?php			
			switch ($field_name)
			{
				case 'photos_id':
					?>
					<img id="foto_img" name="foto" big="<?php echo $entry['foto']?>" small="<?php echo $entry['thumb']?>" src="<?php echo $front_url.$entry['thumb']?>"/>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["photo"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>											
							<input name='usefile' id="foto" type='file' class='medium' tabindex='3'/>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>					
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='description' language="<?php echo $language['id'];?>" type='text' value='<?php echo $entry['description'][$language['id']];?>' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					<div class='gform_footer top_label'>						
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
					<?php
					break;
				case 'videos_id':

					$video = explode('/',$entry['url']);
					
					?>
					<div class="step-item-video">
						<iframe class="youtube-player" type="text/html" width="300" height="300" src="http://www.youtube.com/embed/<?php echo $video[count($video)-1]?>" frameborder="0"></iframe>
					</div>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["video"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>											
							<input name='url' language="no" type='text' value="<?php echo $entry['url']?>" class='medium' tabindex='3'/>						
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang["note"]?><span class='gfield_required'>*</span>:</label>
						<div class='ginput_container'>					
							<?php 						
								foreach ($languages as $language):
									?>
									<input name='description' language="<?php echo $language['id'];?>" type='text' value='<?php echo $entry['description'][$language['id']];?>' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					<div class='gform_footer top_label'>						
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
					<?php
					break;
			}
			?>			
		</ul>
	</div>
	<div class='gform_footer top_label'>
		<input type='button' id='gform_submit_button_2' class='button save_entry' value='<?php echo $lang["save"]?>' tabindex='6'/>
	</div>
</div>