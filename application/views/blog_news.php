<?php foreach ($items_array as $news):?>
	<div class="news-home">
		<?php $date = explode(" ",date("j M Y",strtotime($news['date'])));?>
		<fieldset>
			<legend><a class="single news-title" id="news/<?php echo $news['id']?>" href="javascript:void(0);"><?php echo $news['name']?></a></legend>			
			<?php echo $news['short_description']?>				
			<p class="date"><span style="color:#45688E;"><?php echo $lang['post_date']?>: </span> <span style="color:#A9B8CB;"><?php echo $date[0].' '.$this->params['lang']['month'][strtolower($date[1])].' '.$date[2];?></span></p>
			<!-- Comments section -->
			<div class="fieldset">
				<fieldset>					
					<legend><?php echo $lang['comments']?></legend>
					<div class="expanded"> 												
						<div id="news_<?php echo $news['id']?>" class="vk_comments"></div>
					</div>
				</fieldset>
			</div>			
		</fieldset>
	</div>	
<?php endforeach;?>
