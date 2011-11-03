<div class="news-home">	
	<span class="history" href="javascript:void(0);"></span>
	<?php $date = explode(" ",date("j M Y",strtotime($items_array['date']))); ?> 				
	<?php echo $items_array['description']?>
	<p style="float:right; font-size:11px;"><?php echo $date[0].' '.$this->params['lang']['month'][strtolower($date[1])].' '.$date[2];?> </p>
</div>	

