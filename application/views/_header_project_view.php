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
<body <?php if (!empty($project['bg_image'])) echo "style='background:".$project['bg_color']." url(".$base.$project['bg_image'].") 50% 0 no-repeat'"?>>

	<!-- PNG FIX for IE6 -->
	<!--[if lte IE 6]>
		<script type="text/javascript" src="/static/js/pngfix/supersleight-min.js"></script>
	<![endif]-->

	 <script type="text/javascript">
        var base_url = '<?php echo $base; ?>';
		var admin_url = '<?php echo $base.'admin/'; ?>';
		var language_id  = '<?php echo $language_id;?>';
    </script>
	
<div id="header">
	<div class="b-header g-line">
		<table class="b-header__layout">
			<tbody>
				<tr>
					<td class="b-header__layout-l1">
						<div class="b-header__layout-i">
						<div class="b-logo" <?php if ($project['thumb']) echo 'style="background:url('.$base.$project['thumb'].') no-repeat"';?>>
							<a class="home-link" href="javascript:void(0);"></a>
						</div>
						</div>						
					</td>
					<td class="b-header__layout-l2">
						<div class="b-header__layout-i">
							<div class="b-dates">
								<i class="b-dates__ill"></i>
								<div class="b-dates__dates">
									<span class="b-dates__date"><?php echo date("d", strtotime($project['date']));?></span>
									<span class="b-dates__month"><?php echo $lang['month'][strtolower(date('M', strtotime($project['date'])))]?></span>
								</div>
							</div>
							<div class="b-strapline">
								<h1 class="b-strapline__title">
								<span class="b-strapline__title-i"><?php echo $project['name']?><br></span>
								<span class="b-strapline__title-i"><?php echo $project['group_name']?></span></h1>
								<div class="b-strapline__location">
                                        <?php echo $project['place'];?>
								</div>
							</div>
						</div>
					</td>
					<td class="b-header__layout-l3">
						<div class="b-menu b-round">
							<table class="b-menu__layout">
								<tbody>
									<tr>
										<td class="b-menu__layout-l">
											<ul class="b-menu__list">
												<li class="b-menu__item"><a href="javascript:void(0);" class="selected" id="about"><?php echo $lang['project_about']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="steps"><?php echo $lang['project_steps']?></a></li>												
											</ul>
										</td>
										<td class="b-menu__layout-c">
											<ul class="b-menu__list">
												<li class="b-menu__item"><a href="javascript:void(0);" id="media"><?php echo $lang['project_media']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="partners"><?php echo $lang['project_partners']?></a></li>
												<li class="b-menu__item"><a href="javascript:void(0);" id="links"><?php echo $lang['project_links']?></a></li>												
											</ul>
										</td>
										<td class="b-menu__layout-r">
											<ul class="b-menu__list">
												<li class="b-menu__item">
												<div id="languages">
												<?php
													foreach ($languages as $item):
													?>
														<a href="javascript:void(0);" id="<?php echo $item['name']?>" class="flag <?php if ($language == $item['name']) echo 'activ_flag';?>"><img src="<?php echo $base_img?>flags/<?php echo $item['flag']?>"/></a>
													<?php
													endforeach;
												?>
												</div>
												</li>
											</ul>														
										</td>
									</tr>
								</tbody>
							</table>
							<i class="b-menu__ill">
							</i>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="b-sub-header">
		<table class="b-sub-header__layout">
			<tbody>
				<tr>
					<td class="b-sub-header__layout-l">
						<div class="b-sub-header__layout-i">
							<div class="b-head-info b-block">
								<h2><?php echo $project['name'].' '.date("Y", strtotime($project['date']))?> </h2>
								<div class="b-block__accent">
									<?php echo $project['purpose']?>
                                </div>
								<?php echo $project['short_description']?>
							</div>
						</div>
					</td>
					<td class="b-sub-header__layout-r">
						<div class="b-sub-header__layout-i" <?php if (empty($project['banner'])) echo "style='display:none;'";?>>
							<div class="b-mini-artist b-block b-round">
								<div class="b-artist">
									<div class="b-artist__photo">
										<img src="<?php echo $base.$project['banner'];?>" class="b-artist__img"/>
										<div class="b-mini-artist__date">
											<span class="b-mini-artist__num"><?php echo date('d', strtotime($project['date']))?></span>
											<span class="b-mini-artist__month"><?php echo $lang['month'][strtolower(date('M', strtotime($project['date'])))]?></span>
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
				</tr>
			</tbody>
		</table>
	</div>
</div><!--  #header -->