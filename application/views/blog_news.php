<?php foreach ($items_array as $news):?>
	<div class="news-home">
		<?php $date = explode(" ",date("j M Y",strtotime($news['date'])));?>
		<fieldset>
			<legend><a class="single news-title" id="news/<?php echo $news['id']?>" href="javascript:void(0);"><?php echo $news['name']?></a></legend>			
			<?php echo $news['short_description']?>				
			<p class="date"><?php echo $date[0].' '.$this->params['lang']['month'][strtolower($date[1])].' '.$date[2];?></p>
		</fieldset>
	</div>	
<?php endforeach;?>
