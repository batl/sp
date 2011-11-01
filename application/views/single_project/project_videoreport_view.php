<?php
foreach ($project_more as $step):	
	
	if (!empty($step['videos'])):
		foreach ($step['videos'] as $video):			
			$video = explode('/',$video['url']);
			?>
			<div class="step-item-video">
				<iframe class="youtube-player" type="text/html" width="300" height="300" src="http://www.youtube.com/embed/<?php echo $video[count($video)-1]?>" frameborder="0"></iframe>
				<p><?php echo $video['description']?></p>
			</div>
		<?php
		endforeach;
	endif;		
	
endforeach;
?>
