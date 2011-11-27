<div class="news-home">	
	<span class="history" href="javascript:void(0);"></span>
	<?php $date = explode(" ",date("j M Y",strtotime($items_array['date']))); ?> 				
	<?php echo $items_array['description']?>
	<p style="float:right; font-size:11px;"><?php echo $lang['post_date'].': '.$date[0].' '.$this->params['lang']['month'][strtolower($date[1])].' '.$date[2];?> </p>
	<div id="news_<?php echo $items_array['id']?>" class="vk_comments"></div>
</div>	

