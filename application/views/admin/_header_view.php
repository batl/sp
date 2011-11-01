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
	<?php foreach ($include_css as $key=>$item){echo $item;}?>
	
	<script type="text/javascript">
        var base_url  = '<?php echo $base; ?>';
		var front_url = '<?php echo $front_url; ?>';
		var main_navi = '<?php echo $main_navi;?>';
		var language_id  = '<?php echo $language_id;?>';
		var admin_url  = '<?php echo $base;?>';
    </script>
</head>
<body>

<div id="header">
	<div id="wrapper-header">
	
		<div id="logo" <?php if ($current_settings['admin_banner']) echo 'style="background:url('.$front_url.$current_settings['admin_banner'].') no-repeat"';?>><a class="home-link" href="/admin"></a></div>
		
		<div id="languages" class="title-<?php //echo $language;?>">	
			<div>
			<?php
				foreach ($languages as $item):
				?>
					<a href="javascript:void(0);" id="<?php echo $item['name']?>" class="flag <?php if ($language == $item['name']) echo 'activ_flag';?>"><img language="no" src="<?php echo $base_img?>flags/<?php echo $item['flag']?>"/></a>
				<?php
				endforeach;
			?>
			</div>
		</div>
		<?php if (!empty($admin_id)):?>									
			<div id="log-in-welcome"><?php echo $lang['welcome'].', '.$admin_info['name'].' '.$admin_info['suname'].'  |  ';?><a href="<?php echo $base;?>main/logout"><?php echo $lang['menu_logout'];?></a></div>
			<div id="main-nav">
				<ul id="menu-main-navigation" class="menu">
					<li id="menu-item-1" <?php if ($main_navi==1) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>"><?php echo $lang['dashboard']?></a></li>
					<li id="menu-item-2" <?php if ($main_navi==2) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>user"><?php echo $lang['users']?></a></li>
					<li id="menu-item-3" <?php if ($main_navi==3) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>page"><?php echo $lang['pages']?></a></li>
					<li id="menu-item-4" <?php if ($main_navi==4) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>goods"><?php echo $lang['goods'].'/'.$lang['services']?></a></li>					
					<li id="menu-item-5" <?php if ($main_navi==5) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>project"><?php echo $lang['projects'].'/'.$lang['ideas']?></a></li>
					<li id="menu-item-6" <?php if ($main_navi==6) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>report"><?php echo $lang['reports']?></a></li>
					<li id="menu-item-7" <?php if ($main_navi==7) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>profile"><?php echo $lang['profile']?></a></li>					
				</ul>
				<ul id="menu-main-navigation" class="menu display_none">
					<li id="menu-item-8" <?php if ($main_navi==8) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>dictionary"><?php echo $lang['dictionary']?></a></li>
					<li id="menu-item-9" <?php if ($main_navi==9) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>news"><?php echo $lang['news'].'/'.$lang['anonses']?></a></li>
					<li id="menu-item-10" <?php if ($main_navi==10) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>event"><?php echo $lang['events']?></a></li>
					<li id="menu-item-11" <?php if ($main_navi==11) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>settings"><?php echo $lang['settings']?></a></li>
					<li id="menu-item-12" <?php if ($main_navi==12) echo "class='menu-item-selected'"; else echo "class='menu-item'"; ?>><a href="<?php echo $base;?>poll"><?php echo $lang['polls']?></a></li>
				</ul>
				<a href="javascript:void(0);" id="menu-switcher" class="down"></a>
			</div><!-- #main-nav -->			
		<?php endif;?>

	</div><!--  #wrapper-header -->	
</div><!--  #header -->
<noscript><div id="js_disabled"><h2><?php echo $lang['js_disabled']?></h2><p><?php echo $lang['js_enable']?></p></div></noscript>