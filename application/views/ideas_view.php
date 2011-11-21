<?php foreach ($items_array as $idea):?>
	<div class="project-item">
		<div class="project-item-content" style="width:98%;">
			<a href="javascript:void(0);" class="single" id="ideas/<?php echo $idea['id']?>"><?php echo $idea['name']?></a><br />									
			<?php
				echo $lang['author'].': '; echo !(empty($idea['author'])) ? $idea['author'] : $lang['no_data'];
			?>
			<br/>
			<?php
				$categories = json_decode($idea['category_ids'], true);				
				$ideas_categories = array();
				
				foreach ($all_categories as $category)
				{
					if (in_array($category['id'], $categories)) array_push($ideas_categories, $category['name']);
				}
				if (count($ideas_categories)>1) echo $lang['groups'].': '; else echo $lang['group'].': ';  
				if (!empty($ideas_categories)) echo implode(', ', $ideas_categories); else echo $lang['no_data'];								
			?>
			<br/>
			<?php
				echo $lang['scope'].': '; echo !(empty($idea['scope'])) ? $idea['scope'] : $lang['no_data'];
			?>											
		</div>
	</div>	
	<div class="clear"></div>
<?php endforeach;?>
