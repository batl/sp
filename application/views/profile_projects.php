<?php foreach ($items_array as $project):?>
	<div class="project-item">
		<div class="anons_thumb">
			<img src="<?php echo $base.$project['thumb']?>" />
		</div>
		<div class="project-item-content">
			<a href="<?php echo $base.'project/'.$project['slug']?>" target="_blanck"><?php echo $project['name']?></a><br />			
			<?php 
				echo $lang['date_start'].': ';
				if (!empty($project['date_start']))
				{
					$date = explode(" ",date("j M Y",strtotime($project['date_start'])));
					echo $date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
				}
				else echo $lang['no_data'];
			?>			
			<?php 
				echo $lang['date_end'].': ';
				if (!empty($project['date_end']))
				{
					$date = explode(" ",date("j M Y",strtotime($project['date_end'])));
					echo $date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
				}
				else echo $lang['no_data'];
			?>
			<br/><br/>
			<?php
				echo $lang['place'].': '; echo !(empty($project['place'])) ? $project['place'] : $lang['no_data'];
			?>
			<br/>
			<?php
				echo $lang['group'].': '; echo !(empty($project['group_name'])) ? $project['group_name'] : $lang['no_data'];
			?>
			<br/>
			<?php
				echo $lang['note'].': '; echo !(empty($project['short_description'])) ? $project['short_description'] : $lang['no_data'];
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
