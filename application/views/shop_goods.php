<?php foreach ($items_array as $goods):?>
	<div class="store-item">
		<div class="store-item-img"><a class="lightbox" href="<?php echo $base.$goods['foto']?>"><img src="<?php echo $base.$goods['thumb']?>" /></a></div>
		<h3><a class="single" id="goods/<?php echo $goods['id']?>" href="javascript:void(0);"><?php echo $goods['name'] ?></a></h3>
		<p style="font-size:10px;"><?php echo $lang['group']?>:  <?php echo $goods['group_name']?></p>
		<!--p><?php echo $lang['price']?>:  <?php echo $goods['price']?> грн. </p>
		<a class="buy-btn" href="javascript:void(0);"><?php echo $lang['buy_now']?></a-->
	</div>
<?php endforeach;?>
