<div class="news-home">	
	<span class="history" href="javascript:void(0);"></span>
	<?php $date = explode(" ",date("j M Y",strtotime($items_array['date']))); ?> 
		
	<p><?php echo $date[0].' '.$this->params['lang']['month'][strtolower($date[1])].' '.$date[2];?> </p>
	
	<?php echo $items_array['description']?>
</div>	

