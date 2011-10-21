<div id="wrapper">
	<div id="content">		
		<div id="dealer-content">
			<div id="content-container-100">
				<div id="sub-hdr"><h3><?php echo $page['name']?></h3></div>		
					<div id="page-content">
						<?php echo $page['body']?>
					</div>
					<div class='gform_wrapper' id='gform_wrapper_2'>
						<form method='post' enctype='multipart/form-data' id='gform_2' class='' action=''>
							<div class='gform_heading'>
								<!--<h3 class='gform_title'><?php echo $lang['contact_us']?></h3>-->
								<span class='gform_description'></span>
							</div>
							<div class='gform_body'>
								<input type='hidden' class='gform_hidden' name='is_submit_2' value='1'/>
								<ul id='gform_fields_2' class='gform_fields top_label'>
									<li id='field_2_1' class='gfield'><label class='gfield_label' for='input_2_1'><?php echo $lang['your_name']?></label>
									<div class='ginput_complex ginput_container' id='input_2_1'>

										<span id='input_2_1_3_container' class='ginput_left'><input type='text' name='input_1_3' id='input_2_1.3' value='' tabindex='1'/></span><span id='input_2_1_6_container' class='ginput_right'><input type='text' name='input_1_6' id='input_2_1.6' value='' tabindex='2'/></span>
									</div>
									</li>
									<li id='field_2_2' class='gfield'><label class='gfield_label' for='input_2_2'>Email<span class='gfield_required'>*</span></label>
									<div class='ginput_container'>
										<input name='input_2' id='input_2_2' type='text' value='' class='medium' tabindex='3'/>
									</div>

									</li>
									<li id='field_2_3' class='gfield'><label class='gfield_label' for='input_2_3'><?php echo $lang['phone']?></label>
									<div class='ginput_container'>
										<input name='input_3' id='input_2_3' type='text' value='' class='medium' tabindex='4'/>
									</div>
									</li>
									<li id='field_2_4' class='gfield'><label class='gfield_label' for='input_2_4'><?php echo $lang['your_message']?></label>
									<div class='ginput_container'>

										<textarea name='input_4' id='input_2_4' class='textarea small' tabindex='5' rows='10' cols='50'></textarea>
									</div>
									</li>
								</ul>
							</div>
							<div class='gform_footer top_label'>
								<input type='submit' id='gform_submit_button_2' class='button' value='<?php echo $lang['send']?>' tabindex='6' name="submit"/>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->