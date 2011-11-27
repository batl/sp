
	<div class="h_section partners">		
		<?php
		if (!empty($project_more['partners'])):		
			foreach ($project_more['partners'] as $iterator => $partner):
			?>
				<p><?php echo $iterator+1; echo ". ".$partner['partner_name']?> - <span><?php echo $lang[$partner['type']]?></span></p>			
			<?php
			endforeach;
		endif;
		?>		
	</div>

