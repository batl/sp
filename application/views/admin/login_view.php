<div id="wrapper">
	<div id="content">
		<div class="message display_none"></div>
		<div class="clear"></div>
		<div id="dealer-content">				
			<div class='gform_wrapper' id='gform_wrapper_2'>
				<div class='gform_heading'>
					<span class='gform_description'></span>
				</div>				
				<form method='post' action='<?php echo $base;?>login' id='login_form'>
					<div class='gform_body'>					
						<ul id='gform_fields_2' class='gform_fields top_label'>
							<li class='gfield'><label class='gfield_label'>Email<span class='gfield_required'>*</span></label>
							<div class="clear"></div>
							<div class='ginput_container'>
								<input name='email' id='email' type='text' value='' class='medium' tabindex='3'/>
							</div>

							</li>
							<li class='gfield'><label class='gfield_label'><?php echo $lang["password"]?><span class='gfield_required'>*</span></label>
							<div class="clear"></div>
							<div class='ginput_container'>
								<input name='password' id='password' type='password' value='' class='medium' tabindex='4'/>
							</div>
							</li>
						</ul>
					</div>
					<div class='gform_footer top_label'>
						<input type='button' id='gform_submit_button_2' class='button' value='<?php echo $lang["menu_login"]?>' tabindex='6' name="submit"/>
					</div>
				</form>
			</div>
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->