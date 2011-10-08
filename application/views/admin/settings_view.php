<div id="wrapper">
	<div id="content">
		<div id="settings_menu">
			<a href="javascript:void(0);" id="main_view" class="selected"><?php echo $lang['main_settings']?></a> | 
			<!--<a href="javascript:void(0);" id="lang_view"><?php echo $lang['lang_settings']?></a>			-->
		</div>
		<h2><?php echo $lang['main_settings']?></h2>
		<div id="overview">
			<div class="list">
				<input type='hidden' class='gform_hidden' name="id" value='<?php echo $settings['id'];?>'/>
				<div class="items">
					<?php echo $view;?>								
				</div>				
			</div>
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->