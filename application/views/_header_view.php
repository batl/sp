<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title><?php echo $title_page;?></title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link rel="icon" href="<?php echo $base_img;?>favicon.png" type="image/x-icon" /> 
	<link rel="shortcut icon" href="<?php echo $base_img;?>favicon.png" type="image/x-icon" />	
	<meta name="keywords" content="<?php foreach ($include_keywords as $key=>$item){echo $item;}?>" />
	<meta name="description" content="<?php echo $include_description;?>" />
	<meta name='yandex-verification' content='4fb035038646c02e' />
	<?php foreach ($include_css as $key=>$item){echo $item;}?>
	<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-27675874-1']);
	  _gaq.push(['_trackPageview']);

	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

	</script>
</head>
<body <?php if (intval($current_settings['bgcolor_trigger'])) echo "style='background:".$current_settings['bg_color']."'"; else if (!intval($current_settings['default_background']) && !empty($current_settings['background'])) echo "style='background:url(".$base.$current_settings['background'].")'"?>>

	<!-- PNG FIX for IE6 -->
	<!--[if lte IE 6]>
		<script type="text/javascript" src="/static/js/pngfix/supersleight-min.js"></script>
	<![endif]-->

	 <script type="text/javascript">
        var base_url = '<?php echo $base; ?>';		
		var admin_url = '<?php echo $base.'admin/'; ?>';
		var language_id  = '<?php echo $language_id;?>';
		var server  = '<?php echo $server;?>';
    </script>	
<div id="header">
	<div id="wrapper-header">	
		<!--<div id="logo" <?php if ($current_settings['site_banner']) echo 'style="background:url('.$base.$current_settings['site_banner'].') no-repeat"';?>><a class="home-link" href="/"></a>
			<h1 id="site-title"><span><a href="" title="" rel="home"></a></span></h1>
			<div id="site-description"></div>
		</div>-->
		<div id="languages" >
			<div id="links">
				<a href="<?php echo $base;?>"><img src="<?php echo $base_img?>folder_home.png" style="height:25px;"/></a>
				<?php if (!empty($user_id)):?>
					<a href="<?php echo $base;?>login/logout"><img src="<?php echo $base_img?>exit.png" style="height:21px; margin-top:3px;"/></a>
				<?php endif;?>
				<ul style="float:left;">
				<?php if (empty($user_id)):?>
					<li><a href="<?php echo $base;?>login"><?php echo $lang['menu_login'];?></a></li>
					<li><a href="<?php echo $base;?>signup" <?php if ($main_navi == 3) echo "class='selected'" ?>><?php echo $lang['signup'];?></a></li>
				<?php endif;?>
				</ul>
			</div>			
			<div id="flags">
			<?php
				foreach ($languages as $item):
				?>
					<a href="javascript:void(0);" id="<?php echo $item['name']?>" class="flag <?php if ($language == $item['name']) echo 'activ_flag';?>"><img src="<?php echo $base_img?>flags/<?php echo $item['flag']?>"/></a>
				<?php
				endforeach;
			?>	
			</div>
		</div>
		<div id="site_info">
			<h1 class="euphorigenic"><?php echo $current_settings['site_name']?></h1>
			<h2><?php echo $current_settings['description']?></h2>
		</div>
		<div id="dealer-nav">
			<ul>								
				<li><a href="<?php echo $base;?>" <?php if ($main_navi == 1) echo "class='selected'" ?>><?php echo $lang['menu_home'];?></a></li>
				<?php if (!empty($header_pages)):
						foreach ($header_pages as $page):						
						?>
						<li>
							<a href="<?php echo $base;?><?php echo str_replace("_"," ",$page['slug']);?>" title="<?php echo $page['description']?>" <?php if ($main_navi== 3 + $page['id']) echo "class='selected'" ?>><?php echo $page['name']?></a>
						</li>
						<?php 
						endforeach;
					endif;
				?>
				<?php if (!empty($user_id)):?>
					<li><a href="<?php echo $base;?>profile" <?php if ($main_navi == 2) echo "class='selected'" ?>><?php echo $lang['menu_profile'];?></a></li>
				<?php endif;?>				
				<li><a href="<?php echo $base;?>forum" target="_blank"><?php echo $lang['menu_forum'];?></a></li>
			</ul>
		</div>
	</div><!--  #wrapper-header -->	
</div><!--  #header -->
<noscript><div id="js_disabled"><h2><?php echo $lang['js_disabled']?></h2><p><?php echo $lang['js_enable']?></p></div></noscript>