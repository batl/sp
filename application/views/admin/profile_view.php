<div id="wrapper">
		<div id="content">
			<div id="sub-nav-profile">
				<ul>
					<li><a id="main_view" class="selected" href="javascript:void(0);"><?php echo $lang['profile_title']?></a>&nbsp;|</li>
					<li><a id="change_pass_view" href="javascript:void(0);"><?php echo $lang['profile_change_password']?></a></li>
				</ul>
			</div>
			<h2><?php echo $lang['profile']?></h2><div class="message display_none"></div>
			<div id="overview">
				<div class="list">
					<input type='hidden' class='gform_hidden' name="id" value='<?php echo $user['id'];?>'/>
					<div id="content-container">
						
						<?php echo $view;?>				

					</div><!--  #content-container -->					
				</div>
			</div>
		</div><!--  #content -->
	</div><!--  #wrapper -->