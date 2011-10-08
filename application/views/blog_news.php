<?php foreach ($items_array as $news):?>
	<div class="news-home">
		<?php $date = explode(" ",date("j M Y",strtotime($news['date'])));?> 
			
		<p class="date"><?php echo $date[0].' '.$this->params['lang']['month'][strtolower($date[1])].' '.$date[2];?></p>
		
		<a class="single news-title" id="news/<?php echo $news['id']?>" href="javascript:void(0);"><?php echo $news['name']?></a><br />		
		<?php echo $news['short_description']?>		
	</div>	
<?php endforeach;?>
