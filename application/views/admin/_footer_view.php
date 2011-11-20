<?php foreach ($include_js as $key=>$item){echo $item;}?>
<div id="footer">
	<div id="dialog-remove" title="<?php echo $lang['record_removing']?>" style="display:none;">
		<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span><?php echo $lang['permanently_removed']?></p>
	</div>
	<div id="dialog-trash" title="<?php echo $lang['move_to_trash']?>" style="display:none;">
		<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span><?php echo $lang['permanently_trashed']?></p>
	</div>
	<div id="dialog-recover" title="<?php echo $lang['recover']?>" style="display:none;">
		<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span><?php echo $lang['record_recover']?></p>
	</div>
	<div id="wrapper-footer">
		<div id="footer-content">
			<div id="footer-logo"></div>
			<div id="footer-links">
				<ul>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<div id="footer-newsletter">&copy;&nbsp;<?php if (!empty($current_settings['copy_text'])) echo $current_settings['copy_text'];?>&nbsp;<?php echo date("Y")?></div>
		</div>
	</div>
</div>



</body>
</html>