<?php

	if (!empty($project_more['photos'])):
		foreach ($project_more['photos'] as $photo):
		?>
			<div class="step-item-img">
				<a class="lightbox" href="<?php echo $base.$photo['foto']?>"><img src="<?php echo $base.$photo['thumb']?>" /></a>
				<p><?php echo $photo['description']?></p>
			</div>
		<?php
		endforeach;
	endif;					
	
?>
