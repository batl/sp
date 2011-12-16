<?php 
if (!empty($project_more['events'])):
	foreach ($project_more['events'] as $event):?>
	<div class="h_section">
		<fieldset class="field">
			<legend><?php echo $event['name']?></legend>			
				<div class="step-item-img" style="float:left;">
					<a class="lightbox" href="<?php echo $base.$event['logo']?>"><img src="<?php echo $base.$event['thumb']?>" /></a>					
				</div>
				<?php 				
					if (!empty($event['date_start']) && $event['date_start'] != '0000-00-00')
					{
						$date = explode(" ",date("j M Y",strtotime($event['date_start'])));
						echo $lang['date_range'].': '.$lang['from'].' '.$date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
						if (!empty($event['date_end']) && $event['date_end'] != '0000-00-00')
						{
							$date = explode(" ",date("j M Y",strtotime($event['date_end'])));
							echo ' '.$lang['to'].' '.$date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
						}
						echo '<br/>';
					}				
					echo $lang['group'].': ';  if (!empty($event['group_name'])) echo $event['group_name']; else echo $lang['no_data'];
				?>				
				<br/>
				<div style="float:left;">
					<?php echo $lang['note'].': '.$event['description']?>
				</div>
		</fieldset>
	</div>	
	<?php
	endforeach;
endif;
?>
