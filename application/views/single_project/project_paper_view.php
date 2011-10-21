<?php
foreach ($project_more as $step):
	?>
	<div class="h_section partners">		
		<?php
		if (!empty($step['paper'])):
			
			echo $step['paper'];
			
		endif;
		?>		
	</div>
	<?php
endforeach;
?>
