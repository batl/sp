<?php
foreach ($project_more as $step):
	?>
	<div class="h_section partners">		
		<?php
		if (!empty($step['product_links'])):
			
			echo $step['product_links'];
			
		endif;
		?>		
	</div>
	<?php
endforeach;
?>
