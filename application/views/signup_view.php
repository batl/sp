<div id="wrapper">
		<div id="content">
			<?php 
				if (isset($msg) && $msg){
				?>				
					<div class="message"><?php echo $msg;?></div>
				<?php
				}
				else
				{
				?>
				<form method='post' action="<?php echo $base;?>signup" id="signup_form">
					<div class="signup-box2">
						<div id="sub-hdr"><h3><?php echo $lang['signup_form_title'];?>:</h3></div>
						<div class='gform_wrapper' id='gform_wrapper_2'>
							<div class='gform_body'>
								<ul class='gform_fields top_label'>								
									<li class='gfield'><label class='gfield_label'><?php echo $lang['signup_form_your_name'];?><span class='gfield_required'>*</span></label>
									<div class='ginput_container'>
										<input name='name' id='name' type='text' value='' class='medium' tabindex='3'/>
									</div>
									</li>
									<li class='gfield'><label class='gfield_label'><?php echo $lang['signup_form_email'];?><span class='gfield_required'>*</span></label>
									<div class='ginput_container'>
										<input name='email' id='email' type='text' value='' class='medium' tabindex='3'/>
									</div>
									</li>
									<li class='gfield'><label class='gfield_label'><?php echo $lang['signup_form_password'];?><span class='gfield_required'>*</span></label>
									<div class='ginput_container'>
										<input name='password' id='password' type='password' value='' class='medium' tabindex='3'/>
									</div>
									</li>
									<li class='gfield'><label class='gfield_label'><?php echo $lang['signup_form_confirm_password'];?><span class='gfield_required'>*</span></label>
									<div class='ginput_container'>
										<input name='cpassword' id='cpassword' type='password' value='' class='medium' tabindex='3'/>
									</div>
									</li>
									<input id="PHPurchaseCheckoutButton" type="button" class="button" value="<?php echo $lang['signup_form_submit'];?>" />
								</ul>										
							</div>	<!--  #gform_body -->				
						</div><!--  #gform_wrapper_2 -->	
					</div><!--  #signup-box -->															
				</form>					
				<?php
				}
			?>
		</div><!--  #content -->
	</div><!--  #wrapper -->