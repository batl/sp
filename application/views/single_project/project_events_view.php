	<div class="h_section">
		<fieldset class="field">
			<legend><?php echo $project_more[0]['name']?></legend>			
			<?php
			if (!empty($project_more['photos'])):
			?>
				<h3><?php echo $lang['photos']?></h3>
			<?php
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
		</fieldset>
	</div>	
