<?php foreach ($include_js as $key=>$item){echo $item;}?>
<div id="footer">
	<div id="wrapper-footer">
		<div id="footer-content">
			<div id="footer-logo"></div>
			<div id="footer-links">
				<ul>
					<?php if (!empty($footer_pages)):
							foreach ($footer_pages as $page):						
							?>
							<li>
								<a href="<?php echo $base;?><?php echo str_replace("_"," ",$page['slug']);?>" title="<?php echo $page['description']?>" <?php if ($main_navi== 3 + $page['id']) echo "class='selected'" ?>><?php echo $page['name']?></a>
							</li>
							<?php 
							endforeach;
						endif;
					?>					
				</ul>
			</div>
			<div id="footer_actions"><a id="admin_letter" href="<?php echo $base;?>contacts"></a>
			<!-- Поместите этот тег туда, где должна отображаться кнопка +1. -->
			<g:plusone annotation="inline"></g:plusone>

			<!-- Поместите этот вызов функции отображения в соответствующее место. -->
			<script type="text/javascript">
			  (function() {
				var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
				po.src = 'https://apis.google.com/js/plusone.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
			  })();
			</script>
			</div>
			<div id="footer-newsletter">&copy;&nbsp;<?php if (!empty($current_settings['copy_text'])) echo $current_settings['copy_text'];?>&nbsp;<?php echo date("Y")?></div>
		</div>
	</div>
</div>
</body>
</html>