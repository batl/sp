<?php foreach ($items_array as $service):?>
	<div class="store-item">
		<div class="store-item-img">
			<a class="lightbox" href="<?php echo $base.$service['foto']?>">
				<img src="<?php echo $base.$service['thumb']?>" />
			</a>
		</div>
		<h3>
			<a class="single" id="services/<?php echo $service['id']?>" href="javascript:void(0);"><?php echo $service['name'] ?></a>
		</h3>
		<p style="font-size:10px;"><?php echo $lang['group']?>:  <?php echo $service['group_name']?></p>
		<!--p><?php echo $lang['price']?>:  <?php echo $service['price']?> грн. </p>
		<a class="buy-btn" href="javascript:void(0);"><?php echo $lang['buy_now']?></a-->
	</div>
<?php endforeach;?>
