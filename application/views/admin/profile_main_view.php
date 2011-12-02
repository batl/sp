<div class="message display_none"></div>
<div class='gform_wrapper' id='gform_wrapper_2'>
		<form method='post'>
			<div class='gform_heading'>
			</div>
			<div class='gform_body'>									
				<ul class='gform_fields top_label'>								
					<li class='gfield'><label class='gfield_label'><?php echo $lang['profile_my_foto']?><span class='gfield_required'>*</span></label>
						<div class="clear"></div>
						<div id="photo-preview">
							<img id="foto_img" name="foto" big="<?php echo $user['foto']?>" small="<?php echo $user['thumb']?>" src="<?php echo $front_url.$user['thumb']?>"/>
						</div>						
						<div class='ginput_container'>
							<input name='userfile' id='foto' type='file' value='' class='upload' tabindex='3'/>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang['profile_my_name']?><span class='gfield_required'>*</span></label>
						<span class="to_copy">
							<?php
							foreach ($languages as $item):
								?>
									<a href="javascript:void(0);" id="<?php echo $item['id']?>" class="flag <?php if ($language == $item['name']) echo 'activ_to_copied';?>"><img language="no" src="<?php echo $base_img?>flags/<?php echo $item['flag']?>" title="<?php echo $lang['copy_this']?>"/></a>
								<?php
								endforeach;
							?>&nbsp;<span class="copy_message"><?php echo $lang['copied']?></span>
						</span>
						<div class="clear"></div>
						<div class='ginput_container'>												
							<?php 						
								foreach ($languages as $value):
									?>
									<input name='name' language="<?php echo $value['id'];?>" type='text' value='<?php echo $user['name'][$value['id']];?>' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang['profile_my_surname']?><span class='gfield_required'>*</span></label>
						<span class="to_copy">
							<?php
							foreach ($languages as $item):
								?>
									<a href="javascript:void(0);" id="<?php echo $item['id']?>" class="flag <?php if ($language == $item['name']) echo 'activ_to_copied';?>"><img language="no" src="<?php echo $base_img?>flags/<?php echo $item['flag']?>" title="<?php echo $lang['copy_this']?>"/></a>
								<?php
								endforeach;
							?>&nbsp;<span class="copy_message"><?php echo $lang['copied']?></span>
						</span>
						<div class="clear"></div>
						<div class='ginput_container'>												
							<?php 						
								foreach ($languages as $value):
									?>
									<input name='suname' language="<?php echo $value['id'];?>" type='text' value='<?php echo $user['suname'][$value['id']];?>' class='medium' tabindex='3'/>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
					<li  class='gfield'><label class='gfield_label'>Email<span class='gfield_required'>*</span></label>
						<div class="clear"></div>
						<div class='ginput_container'>
							<input name='email' language="no" id='email' type='text' value='<?php echo $user['email']?>' class='medium' tabindex='3' disabled="disabled"/>
						</div>
					</li>
					<li class='gfield'><label class='gfield_label'><?php echo $lang['profile_my_phone']?></label>
						<div class="clear"></div>
						<div class='ginput_container'>
							<input name='phone' language="no" id='phone' type='text' value='<?php echo $user['phone']?>' class='medium' tabindex='4'/>
						</div>
					</li>										
					<li class='gfield'><label class='gfield_label'><?php echo $lang['profile_my_message']?></label>
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
										<textarea class='textarea small' tabindex='5' rows='10' cols='50'><?php echo $user['about'][$value['id']]?></textarea>
									</div>
									<?php								
								endforeach;						
							?>
						</div>
					</li>
				</ul>
			</div>
			<div class='gform_footer top_label'>
				<input type='button' id='main_save' class='button' value='<?php echo $lang['save']?>' tabindex='6' name="submit"/>
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
</div>			
