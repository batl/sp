<?php
foreach ($project_more as $step):	

	if (!empty($step['photos'])):
		foreach ($step['photos'] as $photo):
		?>
			<div class="step-item-img">
				<a class="lightbox" href="<?php echo $base.$photo['foto']?>"><img src="<?php echo $base.$photo['thumb']?>" /></a>
			</div>
		<?php
		endforeach;
	endif;					
	
endforeach;
?>
