<?php foreach ($items_array as $project):?>
	<div class="project-item">
		<div class="anons_thumb">
			<img src="<?php echo $base.$project['logo']?>" />
		</div>
		<div class="project-item-content">
			<a href="<?php echo $base.'project/'.$project['slug']?>" target="_blanck"><?php echo $project['name']?> <?php if ($project['in_process']) echo '<span style="color:red; font-size:11px;">('.$lang['in_process'].')</span>'?></a><br />			
			<?php 				
				if (!empty($project['date_start']) && $project['date_start'] != '0000-00-00')
				{
					$date = explode(" ",date("j M Y",strtotime($project['date_start'])));
					echo $lang['date_range'].': '.$lang['from'].' '.$date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
					if (!empty($project['date_end']) && $project['date_end'] != '0000-00-00')
					{
						$date = explode(" ",date("j M Y",strtotime($project['date_end'])));
						echo $lang['to'].' '.$date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
					}
				}				
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
			<p style="font-size:11px; color:#999;">
			<?php
				$post_date = explode(" ",date("j M Y H:i:s",strtotime($project['post_date'])));
				echo $lang['post_date'].': '; echo $post_date[0].' '.$lang['month'][strtolower($post_date[1])].' '.$post_date[2].' '.$post_date[3];
			?>
			<p/>
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
