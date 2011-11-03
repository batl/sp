<div class="news-home" style="width:100%">	
	<span class="history" href="javascript:void(0);"></span>
	<div class="anons_thumb">
		<img src="<?php if (!empty($items_array['logo']) && file_exists($items_array['logo'])) echo $base.$items_array['logo']; else echo $base.'static/images/no_image.jpg';?>" />		
	</div>
	<div class="event_content">		
		<?php 
			echo '<strong>'.$lang['title'].':</strong> '; echo $items_array['name']; 
		?>
		<br />		
		<?php
			echo '<strong>'.$lang['place'].':</strong> '; echo !(empty($items_array['place'])) ? $items_array['place'] : $lang['no_data'];
		?>
		<br/>
		<?php
			echo '<strong>'.$lang['scope'].':</strong> '; echo !(empty($items_array['scope'])) ? $items_array['scope'] : $lang['no_data'];
		?>			
		<br/><br/>
		<?php 
			echo '<strong>'.$lang['activities'].':</strong> '; echo !(empty($items_array['activity'])) ? $items_array['activity'] : $lang['no_data'];
		?>
		<br/>
		<?php 
			echo '<strong>'.$lang['phone'].':</strong> '; echo !(empty($items_array['phone'])) ? $items_array['phone'] : $lang['no_data'];
		?>
		<br/>
		<?php 
			echo '<strong>'.$lang['email'].':</strong> '; echo !(empty($items_array['email'])) ? $items_array['email'] : $lang['no_data'];
		?>
		<br/>
		<?php 
			echo '<strong>'.$lang['sites'].':</strong> '; echo !(empty($items_array['sites'])) ? $items_array['sites'] : $lang['no_data'];
		?>
		<br/>
		<?php 
			echo '<strong>'.$lang['note'].':</strong> '; echo !(empty($items_array['description'])) ? $items_array['description'] : $lang['no_data'];
		?>
		<br/>
	</div>
</div>	

