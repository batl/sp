<?php foreach ($items_array as $method):?>
	<div class="project-item">		
		<div class="project-item-content" style="width:630px;">
			<a href="javascript:void(0);" class="single" id="education/methodics/<?php echo $method['id']?>"><?php echo $method['name']?></a><br />						
			<?php
				echo $lang['author'].': '; echo !(empty($method['author'])) ? $method['author'] : $lang['no_data'];
			?>
			<br/>
			<?php
				echo $lang['links'].': '; echo !(empty($method['links'])) ? $method['links'] : $lang['no_data'];
			?>			
			<br/>			
		</div>
	</div>	
	<div class="clear"></div>
<?php endforeach;?>
