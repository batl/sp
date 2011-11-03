<div id="hidden_links">
	<div class="h_section partners">
		<fieldset>
			<legend><?php echo $lang['goods']?></legend>
			<?php
			if (!empty($project_products)):
				foreach ($project_products as $product):							
					?>				
					<div class="store-item">
						<div class="store-item-img"><a class="lightbox" href="<?php echo $base.$product['foto']?>"><img src="<?php echo $base.$product['thumb']?>" /></a></div>
						<h3><?php echo $product['name'] ?></h3>
						<p style="font-size:10px;"><?php echo $lang['group']?>:  <?php echo $product['group_name']?></p>
						<p><?php echo $lang['price']?>:  <?php echo $product['price']?> грн. </p>
						<a class="buy-btn" href="javascript:void(0);"><?php echo $lang['buy_now']?></a>
					</div>
					<?php						
				endforeach;
			else:
				echo '<p>'.$lang['no_goods'].'</p>';
			endif;
			?>
		</fieldset>
	</div>
</div>
<div id="hidden_links">
	<div class="h_section partners">
		<fieldset>
			<legend><?php echo $lang['services']?></legend>
			<?php
			if (!empty($project_services)):
				foreach ($project_services as $service):
					?>				
					<div class="store-item">
						<div class="store-item-img">
							<a class="lightbox" href="<?php echo $base.$service['foto']?>">
								<img src="<?php echo $base.$service['thumb']?>" />
							</a>
						</div>
						<h3>
							<?php echo $service['name'] ?>
						</h3>
						<p style="font-size:10px;"><?php echo $lang['group']?>:  <?php echo $service['group_name']?></p>
						<p><?php echo $lang['price']?>:  <?php echo $service['price']?> грн. </p>
						<a class="buy-btn" href="javascript:void(0);"><?php echo $lang['buy_now']?></a>
					</div>
					<?php						
				endforeach;
			else:
				echo '<p>'.$lang['no_services'].'</p>';
			endif;
			?>
		</fieldset>
	</div>
</div>
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