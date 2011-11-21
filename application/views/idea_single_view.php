<div class="news-home" style="width:100%">	
	<span class="history" href="javascript:void(0);"></span>	
	<div class="event_content">		
		<?php 			
			echo '<strong>'.$lang['author'].':</strong> '; echo !(empty($items_array['author'])) ? $items_array['author'] : $lang['no_data'];
		?>	
		<br/>
		<?php
			$categories = json_decode($items_array['category_ids'], true);				
			$ideas_categories = array();
			
			foreach ($all_categories as $category)
			{
				if (in_array($category['id'], $categories)) array_push($ideas_categories, $category['name']);
			}
			if (count($ideas_categories)>1) echo '<strong>'.$lang['groups'].':</strong> '; else echo $lang['group'].': ';  
			if (!empty($ideas_categories)) echo implode(', ', $ideas_categories); else echo $lang['no_data'];								
		?>
		<br/>
		<?php
			echo '<strong>'.$lang['scope'].':</strong> '; echo !(empty($items_array['scope'])) ? $items_array['scope'] : $lang['no_data'];
		?>
		<br/>
		<?php
			echo '<strong>'.$lang['note'].':</strong> '; echo !(empty($items_array['description'])) ? $items_array['description'] : $lang['no_data'];
		?>					
	</div>
</div>	

