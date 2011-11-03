<div class="news-home" style="width:100%">	
	<span class="history" href="javascript:void(0);"></span>	
	<div class="event_content">		
		<?php 
			echo '<strong>'.$lang['title'].':</strong> '; echo $items_array['name']; 
		?>
		<br />		
		<?php
			echo '<strong>'.$lang['author'].':</strong> '; echo !(empty($items_array['author'])) ? $items_array['author'] : $lang['no_data'];
		?>
		<br/>
		<?php
			echo '<strong>'.$lang['links'].':</strong> '; echo !(empty($items_array['links'])) ? $items_array['links'] : $lang['no_data'];
		?>			
		<br/><br/>
		<?php 
			echo '<strong>'.$lang['note'].':</strong> '; echo !(empty($items_array['description'])) ? $items_array['description'] : $lang['no_data'];
		?>
		<br/>		
	</div>
</div>	

