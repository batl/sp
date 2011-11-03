<?php foreach ($items_array as $organization):?>
	<div class="project-item">
		<div class="anons_thumb">
			<img src="<?php if (!empty($organization['logo']) && file_exists($organization['logo'])) echo $base.$organization['logo']; else echo $base.'static/images/no_image.jpg';?>" />
		</div>
		<div class="project-item-content">
			<a href="javascript:void(0);" class="single" id="organization/<?php echo $organization['id']?>"><?php echo $organization['name']?></a><br />						
			<?php
				echo $lang['place'].': '; echo !(empty($organization['place'])) ? $organization['place'] : $lang['no_data'];
			?>
			<br/>
			<?php
				echo $lang['phone'].': '; echo !(empty($organization['phone'])) ? $organization['phone'] : $lang['no_data'];
			?>			
			<br/>
			<?php
				echo $lang['email'].': '; echo !(empty($organization['email'])) ? $organization['phone'] : $lang['no_data'];
			?>			
			<br/>			
			<?php
			echo $lang['type'].': <br/>';
			?>
			<ul>
			<?php
			echo !(empty($organization['grantor'])) ? '<li>'.$lang['grantor'].'</li>' : '';
			echo !(empty($organization['investor'])) ? '<li>'.$lang['investor'].'</li>' : '';
			echo !(empty($organization['individual'])) ? '<li>'.$lang['individual'].'</li>' : '';
			echo !(empty($organization['developer'])) ? '<li>'.$lang['developer'].'</li>' : '';
			echo !(empty($organization['sponsor'])) ? '<li>'.$lang['sponsor'].'</li>' : '';
			echo !(empty($organization['creative'])) ? '<li>'.$lang['creative'].'</li>' : '';
			?>
			</ul>					
		</div>
	</div>	
	<div class="clear"></div>
<?php endforeach;?>
