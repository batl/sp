<div id="hidden_links">
	<div class="h_section partners">
		<fieldset>
			<legend><?php echo $lang['goods_links']?></legend>
			<?php
			$empty = true;
			foreach ($project_more as $step):		
				if (!empty($step['product_links'])):				
					?>				
					<fieldset>
						<legend><?php echo '"'.$step['name'].'" '?></legend>
						<?php
						echo $step['product_links'];
						?>
					</fieldset>
					<?php
					$empty = false;
				endif;		
			endforeach;
			if ($empty) echo '<p>'.$lang['no_links'].'</p>';
			?>
		</fieldset>
	</div>
</div>