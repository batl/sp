<?php
foreach ($project_more as $step):
	?>
	<div class="h_section partners">		
		<?php
		if (!empty($step['partners'])):		
			foreach ($step['partners'] as $iterator => $partner):
			?>
				<p><?php echo $iterator+1; echo ". ".$partner['partner_name']?> - <span><?php echo $lang[$partner['type']]?></span></p>			
			<?php
			endforeach;
		endif;
		?>		
	</div>
	<?php
endforeach;
?>