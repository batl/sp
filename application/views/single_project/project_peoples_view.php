<?php
foreach ($project_more as $step):
	?>
	<div class="h_section partners">		
		<?php
		if (!empty($step['workgroups_links'])):
			
			echo $step['workgroups_links'];
			
		endif;
		?>		
	</div>
	<?php
endforeach;
?>
