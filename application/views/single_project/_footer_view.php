<?php foreach ($include_js as $key=>$item){echo $item;}?>
<div id="social-links">
	<div id="wrapper-footer">
		<div id="footer-content">			
			<div id="footer-links">
				<span class="in_social_networks"><?php echo $project['name'].' '.$lang['in_social_networks'].':';?></span>
				<ul>
					<?php 
						if (!empty($project['facebook_link'])):											
							?>
							<li>
								<a href="<?php echo $project['facebook_link'];?>" target="_blanck"><img src="/static/images/facebook_ico.jpg"/></a>
							</li>
							<?php 							
						endif;
						if (!empty($project['twitter_link'])):											
							?>
							<li>
								<a href="<?php echo $project['twitter_link'];?>" target="_blanck"><img src="/static/images/twitter_ico.jpg"/></a>
							</li>
							<?php 							
						endif;
						if (!empty($project['vkontakte_link'])):											
							?>
							<li>
								<a href="<?php echo $project['vkontakte_link'];?>" target="_blanck"><img src="/static/images/vkontakte_ico.jpg"/></a>
							</li>
							<?php 							
						endif;
					?>					
				</ul>
			</div>			
		</div>
	</div>
</div>

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
								<a href="<?php echo $base;?><?php echo str_replace("_"," ",$page['slug']);?>" <?php if ($main_navi== 3 + $page['id']) echo "class='selected'" ?>><?php echo $page['name']?></a>
							</li>
							<?php 
							endforeach;
						endif;
					?>					
				</ul>
			</div>
			<div id="footer-newsletter">&copy;&nbsp;<?php if (!empty($current_settings['copy_text'])) echo $current_settings['copy_text'];?>&nbsp;<?php echo date("Y")?></div>
		</div>
	</div>
</div>
</body>
</html>