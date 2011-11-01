<?php
foreach ($project_more as $step):
	?>
	<div class="h_section">
		<h2><?php echo $step['name']?></h2>		
		<div class="h_section_content">
			<?php echo $step['description']?>
		</div>
		<?php
		if (!empty($step['photos'])):
		?>
			<h3><?php echo $lang['photos']?></h3>
		<?php
			foreach ($step['photos'] as $photo):
			?>
				<div class="step-item-img">
					<a class="lightbox" href="<?php echo $base.$photo['foto']?>"><img src="<?php echo $base.$photo['thumb']?>" /></a>
					<p><?php echo $photo['description']?></p>
				</div>
			<?php
			endforeach;
		endif;
		?>
		<a href="javascript:void(0)" class="more" id="<?php echo $step['id']?>"><?php echo $lang['more']?></a>
	</div>
	<?php
endforeach;
?>
