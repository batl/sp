<?php foreach ($items_array as $event):?>
	<div class="project-item">
		<div class="anons_thumb">
			<img src="<?php if (!empty($event['logo']) && file_exists($event['logo'])) echo $base.$event['logo']; else echo $base.'static/images/no_image.jpg';?>" />
		</div>
		<div class="project-item-content">
			<a href="javascript:void(0);" class="single" id="events/0/<?php echo $event['id']?>"><?php echo $event['name']?></a><br />			
			<?php 				
				if (!empty($event['date_start']) && $event['date_start'] != '0000-00-00')
				{
					$date = explode(" ",date("j M Y",strtotime($event['date_start'])));
					echo $lang['date_range'].': '.$lang['from'].' '.$date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
					if (!empty($event['date_end']) && $event['date_end'] != '0000-00-00')
					{
						$date = explode(" ",date("j M Y",strtotime($event['date_end'])));
						echo $lang['to'].' '.$date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
					}
				}				
			?>						
			<br/><br/>
			<?php
				echo $lang['place'].': '; echo !(empty($event['place'])) ? $event['place'] : $lang['no_data'];
			?>
			<br/>
			<?php
				echo $lang['group'].': '; echo !(empty($event['group_name'])) ? $event['group_name'] : $lang['no_data'];
			?>			
			<br/>
			<div class="actions">
				<a href="javascript:void(0);" id="<?php echo $event['id']?>" class="edit_item"><?php echo $lang['edit']?></a>				
				<a href="javascript:void(0);" id="<?php echo $event['id']?>" class="remove_item"><?php echo $lang['remove']?></a>
				<a href="javascript:void(0);" id="events/curators/organizations/<?php echo $event['id']?>" class="events_actions"><?php echo $lang['curators']?></a>
				<a href="javascript:void(0);" id="events/methods/methods/<?php echo $event['id']?>" class="events_actions"><?php echo $lang['methods']?></a>
				<a href="javascript:void(0);" id="events/organizes/organizations/<?php echo $event['id']?>" class="events_actions"><?php echo $lang['organizators']?></a>
			</div>
		</div>
	</div>	
	<div class="clear"></div>
<?php endforeach;?>
