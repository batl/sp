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
							<input name='name' language="<?php echo $language['id']?>" type='text' class='medium' tabindex='3'/>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["project"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="projects_id">						
						<?php
						foreach ($projects as $project)
						{
						?>
						<option value="<?php echo $project['id']?>"><?php echo $project['name']?></option>
						<?php
						}
						?>
					</select>	
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["territory"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="territory">			
						<option value="0"><?php echo $lang["no_territory"]?></option>
						<?php
						foreach ($territories as $territory)
						{
						?>
						<option value="<?php echo $territory['id']?>"><?php echo $territory['name']?></option>
						<?php
						}
						?>
					</select>	
				</div>
			</li>
			<li class='gfield'><label class='checkbox_label'><?php echo $lang["event"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<select name="top_event">	
						<option value="0"><?php echo $lang["no_event"]?></option>
						<?php
						foreach ($events as $event)
						{
						?>
						<option value="<?php echo $event['id']?>"><?php echo $event['name']?></option>
						<?php
						}
						?>
					</select>	
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["resourses"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='resourses' type='file' value='' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["project_plan"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='project_plan' type='file' value='' class='medium' tabindex='3'/>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["application_form"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='application_form' type='file' value='' class='medium' tabindex='3'/>
				</div>
			</li>	
			<li class='gfield'><label class='gfield_label'><?php echo $lang["business_plan"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='business_plan' type='file' value='' class='medium' tabindex='3'/>
				</div>
			</li>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["scheme_budget"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>
					<input name='scheme_budget' type='file' value='' class='medium' tabindex='3'/>
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
			<li class='gfield'><label class='gfield_label'><?php echo $lang["report"]?>: </label>
				<div class='ginput_container'>					
					<?php 						
						foreach ($languages as $language):
							?>
							<div class="textarea" name='report' language="<?php echo $language['id'];?>">
								<textarea type='text' class='medium' tabindex='3'/></textarea>
							</div>
							<?php								
						endforeach;						
					?>
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["product_links"]?><span class='gfield_required'>*</span>:</label>				
				<div class='ginput_container'>
					<input name='product_links' language="no" type='text' value='' class='medium' tabindex='3'/>					
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["feedback_links"]?>: </label>
				<div class='ginput_container'>
					<input name='feedback_links' language="no" type='text' value='' class='medium' tabindex='3'/>					
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["workgroups_links"]?>: </label>
				<div class='ginput_container'>
					<input name='workgroups_links' language="no" type='text' value='' class='medium' tabindex='3'/>					
				</div>
			</li>
			<li class='gfield'><label class='gfield_label'><?php echo $lang["social_links"]?>: </label>
				<div class='ginput_container'>
					<input name='social_links' language="no" type='text' value='' class='medium' tabindex='3'/>					
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