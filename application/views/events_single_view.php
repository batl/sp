<div class="news-home" style="width:100%">	
	<span class="history" href="javascript:void(0);"></span>
	<div class="anons_thumb">
		<img src="<?php echo $base.$items_array['logo']?>" />
	</div>
	<div class="event_content">		
		<?php 
			echo '<strong>'.$lang['title'].':</strong> '; echo $items_array['name']; 
		?>
		<br />
		<?php 
			echo '<strong>'.$lang['date_range'].': '.$lang['from'].'</strong> ';
			if (!empty($items_array['date_start']) && $items_array['date_start'] != '0000-00-00')
			{
				$date = explode(" ",date("j M Y",strtotime($items_array['date_start'])));
				echo $date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
			}
			else echo $lang['no_data'];
		?>			
		<?php 
			echo '<strong>'.$lang['to'].'</strong> ';
			if (!empty($items_array['date_end']) && $items_array['date_end'] != '0000-00-00')
			{
				$date = explode(" ",date("j M Y",strtotime($items_array['date_end'])));
				echo $date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
			}
			else echo $lang['no_data'];
		?>
		<br/><br/>
		<?php
			echo '<strong>'.$lang['place'].':</strong> '; echo !(empty($items_array['place'])) ? $items_array['place'] : $lang['no_data'];
		?>
		<br/>
		<?php
			echo '<strong>'.$lang['group'].':</strong> '; echo !(empty($items_array['group_name'])) ? $items_array['group_name'] : $lang['no_data'];
		?>			
		<br/><br/>
		<?php 
			echo '<strong>'.$lang['price'].':</strong> '; echo !(empty($items_array['price'])) ? $items_array['price'] : $lang['no_data'];
		?>
		<br/>
		<?php 
			echo '<strong>'.$lang['schedule'].':</strong> '; echo !(empty($items_array['schedule'])) ? $items_array['schedule'] : $lang['no_data'];
		?>
		<br/>
		<?php 
			echo '<strong>'.$lang['note'].':</strong> '; echo !(empty($items_array['description'])) ? $items_array['description'] : $lang['no_data'];
		?>
		<br/>
	</div>
</div>	

