<?php
foreach ($project_more as $step):	

	if (!empty($step['photos'])):
	?>
		<h3><?php echo $lang['photos']?></h3>
	<?php
		foreach ($step['photos'] as $photo):
		?>
			<div class="step-item-img">
				<a class="lightbox" href="<?php echo $base.$photo['foto']?>"><img src="<?php echo $base.$photo['thumb']?>" /></a>
			</div>
		<?php
		endforeach;
	endif;		
	
	if (!empty($step['videos'])):
	?>
		<div class="clear"></div>
		<h3><?php echo $lang['videos']?></h3>
	<?php
		foreach ($step['videos'] as $video):			
			$video = explode('/',$video['url']);
			?>
			<div class="step-item-video">
				<iframe class="youtube-player" type="text/html" width="300" height="300" src="http://www.youtube.com/embed/<?php echo $video[count($video)-1]?>" frameborder="0"></iframe>
			</div>
		<?php
		endforeach;
	endif;		
	
endforeach;
?>
