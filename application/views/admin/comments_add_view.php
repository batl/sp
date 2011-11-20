<div class="form">
	<div class='gform_heading'>
	</div>
	<div class='gform_body'>
		<input type='hidden' class='gform_hidden' name='id' value='0'/>
		<input type="hidden" class='gform_hidden' name='project_id' value='<?php echo $project_id?>'/>
		<ul class='gform_fields top_label'>								
			<li class='gfield'><label class='gfield_label'><?php echo $lang["your_name"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<input name='author' language="no" type='text' value='' class='medium' tabindex='3'/>						
				</div>
			</li>			
			<li class='gfield'><label class='gfield_label'><?php echo $lang["comment"]?><span class='gfield_required'>*</span>:</label>
				<div class='ginput_container'>					
					<input name='body' language="no" type='text' value='' class='medium' tabindex='3'/>						
				</div>
			</li>			
		</ul>
	</div>
</div>