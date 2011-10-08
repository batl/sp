<?php foreach ($items_array as $anons):?>
	<div class="news-home">
		<div class="anons_thumb">
			<img src="<?php echo $base.$anons['thumb']?>" />
		</div>
		<div class="anons_content">
			<a class="single" id="anonses/<?php echo $anons['id']?>" href="javascript:void(0);"><?php echo $anons['name']?></a><br />
			<?php echo $anons['link']; ?><br />			
		</div>
	</div>	
<?php endforeach;?>
