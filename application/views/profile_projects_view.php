<?php foreach ($items_array as $project):?>
	<div class="project-item">
		<div class="anons_thumb">
			<img src="<?php echo $base.$project['logo']?>" />
		</div>
		<div class="project-item-content">
			<a href="<?php echo $base.'project/'.$project['slug']?>" target="_blanck"><?php echo $project['name']?> <?php if ($project['in_process']) echo '<span style="color:red; font-size:11px;">('.$lang['in_process'].')</span>'?></a><br />			
			<?php 
				echo $lang['date_range'].': '.$lang['from'].' ';
				if (!empty($project['date_start']) && $project['date_start'] != '0000-00-00')
				{
					$date = explode(" ",date("j M Y",strtotime($project['date_start'])));
					echo $date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
				}
				else echo $lang['no_data'];
			?>			
			<?php 
				echo $lang['to'].' ';
				if (!empty($project['date_end']) && $project['date_end'] != '0000-00-00')
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
				<a href="javascript:void(0);" id="<?php echo $project['id']?>" class="edit_item"><?php echo $lang['edit']?></a>				
				<a href="javascript:void(0);" id="<?php echo $project['id']?>" class="remove_item"><?php echo $lang['remove']?></a>
				<a href="javascript:void(0);" id="<?php echo $project['id']?>" class="projects_stages"><?php echo $lang['stages']?></a>
				<a href="javascript:void(0);" id="<?php echo $project['id']?>" class="projects_news"><?php echo $lang['news']?></a>
				<a href="javascript:void(0);" id="<?php echo $project['id']?>" class="projects_polls"><?php echo $lang['poll_title']?></a>
			</div>
		</div>
	</div>	
	<div class="clear"></div>
<?php endforeach;?>
