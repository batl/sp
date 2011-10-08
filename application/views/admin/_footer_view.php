<?php foreach ($include_js as $key=>$item){echo $item;}?>
<div id="footer">
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