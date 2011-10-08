<?php foreach ($items_array as $project):?>
	<div class="project-item">
		<div class="anons_thumb">
			<img src="<?php echo $base.$project['thumb']?>" />
		</div>
		<div class="project-item-content">
			<a href="<?php echo $base.'project/'.$project['slug']?>" target="_blanck"><?php echo $project['name']?></a><br />			
			<?php 
				$date = explode(" ",date("j M Y",strtotime($project['date'])));
				echo $lang['date'].': '.$date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
			?>
			<br/>
			<?php
				echo $lang['place'].': '.$project['place'];
			?>
			<br/>
			<?php
				echo $lang['group'].': '.$project['group_name'];
			?>
			<br/>
			<?php
				echo $lang['note'].': '.$project['short_description'];
			?>
			<br/>
			<div class="actions">
				<a href="javascript:void(0);" id="<?php echo $project['id']?>" class="edit_item"><?php echo $lang['edit']?></a> | 
				<a href="javascript:void(0);" id="<?php echo $project['id']?>" class="projects_stages"><?php echo $lang['stages']?></a> |
				<a href="javascript:void(0);" id="<?php echo $project['id']?>" class="remove_item"><?php echo $lang['remove']?></a>
			</div>
		</div>
	</div>	
	<div class="clear"></div>
<?php endforeach;?>
