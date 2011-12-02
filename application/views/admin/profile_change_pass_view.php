					<div class="message display_none"></div>
					<div class='gform_wrapper' id='gform_wrapper_2'>
						<form method='post'>
							<div class='gform_heading'>
							</div>
							<div class='gform_body'>									
								<ul class='gform_fields top_label'>																																				
									<li class='gfield'><label class='gfield_label'><?php echo $lang['password']?></label>
										<div class="clear"></div>
										<div class='ginput_container'>
											<input id='password' name="password" language="no" type='password' value='' class='medium' tabindex='4'/>
										</div>
									</li>										
									<li class='gfield'><label class='gfield_label'><?php echo $lang['confirm_password']?></label>
										<div class="clear"></div>
										<div class='ginput_container'>
											<input id='cpassword' name="cpassword" language="no" type='password' value='' class='medium' tabindex='4'/>
										</div>
									</li>
								</ul>
							</div>
							<div class='gform_footer top_label'>
								<input type='button' id='change_pass_save' class='button' value='<?php echo $lang['save']?>' tabindex='6' name="submit"/>
							</div>
						</form>
					</div>			