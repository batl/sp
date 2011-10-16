<?php
foreach ($project_more as $step):
	?>
	<h2><?php echo $step['name']?></h2>
	<div class="h_section">				
		<?php
		if (!empty($step['product_links'])):
		?>
			<h3><?php echo $lang['product_links']?></h3>
		<?php
			echo $step['product_links'];
		endif;
		
		if (!empty($step['feedback_links'])):
		?>
			<h3><?php echo $lang['feedback_links']?></h3>
		<?php
			echo $step['feedback_links'];
		endif;
		
		if (!empty($step['workgroups_links'])):
		?>
			<h3><?php echo $lang['workgroups_links']?></h3>
		<?php
			echo $step['workgroups_links'];
		endif;
		
		if (!empty($step['social_links'])):
		?>
			<h3><?php echo $lang['social_links']?></h3>
		<?php
			echo $step['social_links'];
		endif;
		?>
	</div>
	<?php
endforeach;
?>
