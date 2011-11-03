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
</head>
<body <?php if ((int)$project['apply_bg']) echo "style='background: url(".$base.'static/images/background/'.$project['bg_image'].")'"; else echo "style='background: ".$project['bg_color']."'";?>>

<!-- PNG FIX for IE6 -->
<!--[if lte IE 6]>
	<script type="text/javascript" src="/static/js/pngfix/supersleight-min.js"></script>
<![endif]-->

 <script type="text/javascript">
	var base_url = '<?php echo $base; ?>';
	var admin_url = '<?php echo $base.'admin/'; ?>';
	var language_id  = '<?php echo $language_id;?>';
	var project_id  = '<?php echo $project['id'];?>';
</script>

<span id="menu_font" style="display:none;"><?php echo $project['menu_font']?></span>
<span id="purpose_color" style="display:none;"><?php echo $project['purpose_color']?></span>
	
<div id="header" <?php if ($project['bg_header_image']) echo "style='background: url(".$base.$project['bg_header_image'].") no-repeat scroll 50% 37px transparent'"; ?>>
	<div id="languages" >
		<div id="links">
			<a href="<?php echo $base;?>"><img src="<?php echo $base_img?>folder_home.png" style="height:25px;"/></a>
			<?php if (!empty($user_id)):?>
				<div id="log-in-welcome"><span style="float:left;"><?php echo $lang['welcome'].', '.$user_info['name'].' '.$user_info['suname'].'&nbsp;';?></span><a href="<?php echo $base;?>login/logout"><img src="<?php echo $base_img?>exit.png" style="height:21px; margin-top:3px;"/></a></div>				
			<?php endif;?>			
			<?php if (empty($user_id)):?>
			<ul style="float:left;">
				<li><a href="<?php echo $base;?>login"><?php echo $lang['menu_login'];?></a></li>
				<li><a href="<?php echo $base;?>signup" <?php if ($main_navi == 3) echo "class='selected'" ?>><?php echo $lang['signup'];?></a></li>
			</ul>
			<?php endif;?>
			<div style="float:left; padding-top:5px; margin-left:50px;">
				<a href="<?php echo $base;?>projects"><?php echo $lang['all'].' '.$lang['projects']?></a>
				<a href="javascript:void(0);"><?php echo $lang['print_report']?></a>
			</div>
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
	<div class="b-header g-line">
		<table class="b-header__layout">
			<tbody>
				<tr>
					<?php if (!empty($project['banner'])):?>
					<td class="b-sub-header__layout-r">
						<div class="b-sub-header__layout-i">
							<div class="b-mini-artist b-block b-round" style="background:<?php echo $project['banner_bg_color']?>">
								<div class="b-artist">
									<div class="b-artist__photo">
										<a href="javascript:void(0);" id="project_banner"><img src="<?php echo $base.$project['banner'];?>" class="b-artist__img"/></a>
										<div class="b-mini-artist__date">
											<!--<span class="b-mini-artist__num"><?php echo date('d', strtotime($project['date_start']))?></span>
											<span class="b-mini-artist__month"><?php echo $lang['month'][strtolower(date('M', strtotime($project['date_start'])))]?></span>
											<span class="b-mini-artist__num"><?php echo date('Y', strtotime($project['date_start']))?></span>-->
										</div>
									</div>
									<div class="g-line">
										<!--<h2 class="b-mini-artist__name"><a href="/program/artists/367/">БГ &amp; АКВАРИУМ</a></h2>
										<div class="b-mini-artist__scene">22:00. NuJazz</div>-->
									</div>
								</div>
							</div>
						</div>
					</td>
					<?php endif;?>
					<td class="b-header__layout-l3">
						<div class="b-menu b-round">
							<table class="b-menu__layout">
								<tbody>
									<tr>
										<td class="b-menu__layout-l">
											<ul class="b-menu__list">
												<li class="b-menu__item"><a href="javascript:void(0);" class="selected" id="about"><?php echo $lang['project_about']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="plan"><?php echo $lang['project_plan']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="map"><?php echo $lang['project_map']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="products"><?php echo $lang['project_products']?></a></li>																								
											</ul>
										</td>
										<td class="b-menu__layout-c">
											<ul class="b-menu__list">
												<li class="b-menu__item"><a href="javascript:void(0);" id="peoples"><?php echo $lang['project_peoples']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="contacts"><?php echo $lang['project_contacts']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="photoreport"><?php echo $lang['project_photoreport']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="videoreport"><?php echo $lang['project_videoreport']?></a></li>
											</ul>
										</td>
										<td class="b-menu__layout-r">
											<ul class="b-menu__list">
												<li class="b-menu__item"><a href="javascript:void(0);" id="feedbacks"><?php echo $lang['project_feedbacks']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="paper"><?php echo $lang['project_paper']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="partners"><?php echo $lang['project_partners']?></a></li>
												<?php if (!empty($user_id) || !empty($admin_id)):?><li class="b-menu__item"><a href="javascript:void(0);" id="hidden_link"><?php echo $lang['hidden_link']?></a></li><?php endif;?>												
											</ul>														
										</td>
									</tr>
								</tbody>
							</table>							
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>	
</div><!--  #header -->
<noscript><div id="js_disabled"><h2><?php echo $lang['js_disabled']?></h2><p><?php echo $lang['js_enable']?></p></div></noscript>