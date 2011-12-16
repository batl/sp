<form method='post'>
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='<?php echo $entry['id']?>'/>		
		<ul class='gform_fields top_label'>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["resourses"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input id='resourses' type='file' value='' class='medium document' tabindex='3'/>
					<?php
					if (!empty($entry['resourses'])):
					?>
					<a class="document_file" href="<?php echo $front_url?>doc/<?php echo $entry['resourses']?>"><?php echo $lang["resourses"].'('.$lang["download_view"].')'?></a>
					<?php
					else:
					?>
					<a class="document_file" href="javascript:void(0);"><?php echo $lang["not_download"]?></a>
					<?php
					endif;
					?>
					<input name='resourses' type='hidden' value='<?php echo $entry['resourses']?>'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["project_plan"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input id='project_plan' type='file' value='' class='medium document' tabindex='3'/>
					<?php
					if (!empty($entry['project_plan'])):
					?>
					<a class="document_file" href="<?php echo $front_url?>doc/<?php echo $entry['project_plan']?>"><?php echo $lang["project_plan"].'('.$lang["download_view"].')'?></a>
					<?php
					else:
					?>
					<a class="document_file" href="javascript:void(0);"><?php echo $lang["not_download"]?></a>
					<?php
					endif;
					?>
					<input name='project_plan' type='hidden' value='<?php echo $entry['project_plan']?>'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["application_form"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input id='application_form' type='file' value='' class='medium document' tabindex='3'/>
					<?php
					if (!empty($entry['application_form'])):
					?>
					<a class="document_file" href="<?php echo $front_url?>doc/<?php echo $entry['application_form']?>"><?php echo $lang["application_form"].'('.$lang["download_view"].')'?></a>
					<?php
					else:
					?>
					<a class="document_file" href="javascript:void(0);"><?php echo $lang["not_download"]?></a>
					<?php
					endif;
					?>
					<input name='application_form' type='hidden' value='<?php echo $entry['application_form']?>'/>
				</div>
			</li>	
			<li class='gfield'><label class='gfield_label'><?php echo $lang["business_plan"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input id='business_plan' type='file' value='' class='medium document' tabindex='3'/>
					<?php
					if (!empty($entry['business_plan'])):
					?>
					<a class="document_file" href="<?php echo $front_url?>doc/<?php echo $entry['business_plan']?>"><?php echo $lang["business_plan"].'('.$lang["download_view"].')'?></a>
					<?php
					else:
					?>
					<a class="document_file" href="javascript:void(0);"><?php echo $lang["not_download"]?></a>
					<?php
					endif;
					?>
					<input name='business_plan' type='hidden' value='<?php echo $entry['business_plan']?>'/>
				</div>
			</li>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["scheme_budget"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input id='scheme_budget' type='file' value='' class='medium document' tabindex='3'/>
					<?php
					if (!empty($entry['scheme_budget'])):
					?>
					<a class="document_file" href="<?php echo $front_url?>doc/<?php echo $entry['scheme_budget']?>"><?php echo $lang["scheme_budget"].'('.$lang["download_view"].')'?></a>
					<?php
					else:
					?>
					<a class="document_file" href="javascript:void(0);"><?php echo $lang["not_download"]?></a>
					<?php
					endif;
					?>
					<input name='scheme_budget' type='hidden' value='<?php echo $entry['scheme_budget']?>'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["report"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='report' language="<?php echo $language['id'];?>">
								<textarea class='textarea small mceEditor' tabindex='5' rows='10' cols='50'><?php echo $entry['report'][$language['id']];?></textarea>		
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["product_links"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='product_links' language="<?php echo $language['id'];?>">
								<textarea class='textarea small mceEditor' tabindex='5' rows='10' cols='50'><?php echo $entry['product_links'][$language['id']];?></textarea>		
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["feedback_links"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='feedback_links' language="<?php echo $language['id'];?>">
								<textarea class='textarea small mceEditor' tabindex='5' rows='10' cols='50'><?php echo $entry['feedback_links'][$language['id']];?></textarea>		
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["workgroups_links"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='workgroups_links' language="<?php echo $language['id'];?>">
								<textarea class='textarea small mceEditor' tabindex='5' rows='10' cols='50'><?php echo $entry['workgroups_links'][$language['id']];?></textarea>		
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["paper"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='paper' language="<?php echo $language['id'];?>">
								<textarea class='textarea small mceEditor' tabindex='5' rows='10' cols='50'><?php echo $entry['paper'][$language['id']];?></textarea>		
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