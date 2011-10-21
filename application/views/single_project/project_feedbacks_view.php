<?php
foreach ($project_more as $step):
	?>
	<div class="h_section partners">		
		<?php
		if (!empty($step['feedback_links'])):
			
			echo $step['feedback_links'];
			
		endif;
		?>		
	</div>
	<?php
endforeach;
?>
