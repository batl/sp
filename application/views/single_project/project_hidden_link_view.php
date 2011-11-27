<div id="hidden_links">
	<div class="h_section partners">
		<fieldset class="field">
			<legend><?php echo $lang['resourses']?></legend>
			<?php
			$empty = true;				
			if (!empty($project_more[0]['resourses'])):				
				?>				
				<p><a href="<?php echo $front_url?>doc/<?php echo $project_more[0]['resourses']?>"><?php echo '('.$lang["download_view"].')'?><img src="/static/images/<?php echo substr($project_more[0]['resourses'], strpos($project_more[0]['resourses'],".") + 1)?>.png"/></a></p>
				<?php
				$empty = false;
			endif;					
			if ($empty) echo '<p>'.$lang['not_downloads'].'</p>';
			?>
		</fieldset>
	</div>
	<div class="h_section partners">
		<fieldset class="field">
			<legend><?php echo $lang['project_plan']?></legend>
			<?php
			$empty = true;				
			if (!empty($project_more[0]['project_plan'])):
				?>
				<p><a href="<?php echo $front_url?>doc/<?php echo $project_more[0]['project_plan']?>"><?php echo '('.$lang["download_view"].')'?><img src="/static/images/<?php echo substr($project_more[0]['project_plan'], strrpos($project_more[0]['project_plan'],'.') + 1)?>.png"/></a></p>
				<?php
				$empty = false;
			endif;					
			if ($empty) echo '<p>'.$lang['not_downloads'].'</p>';
			?>
		</fieldset>
	</div>
	<div class="h_section partners">
		<fieldset class="field">
			<legend><?php echo $lang['application_form']?></legend>
			<?php
			$empty = true;				
			if (!empty($project_more[0]['application_form'])):
				?>
				<p><a href="<?php echo $front_url?>doc/<?php echo $project_more[0]['application_form']?>"><?php echo '('.$lang["download_view"].')'?><img src="/static/images/<?php echo substr($project_more[0]['application_form'], strrpos($project_more[0]['application_form'],'.') + 1)?>.png"/></a></p>
				<?php
				$empty = false;
			endif;					
			if ($empty) echo '<p>'.$lang['not_downloads'].'</p>';
			?>
		</fieldset>
	</div>
	<div class="h_section partners">
		<fieldset class="field">
			<legend><?php echo $lang['business_plan']?></legend>
			<?php
			$empty = true;
			if (!empty($project_more[0]['business_plan'])):
				?>
				<p><a href="<?php echo $front_url?>doc/<?php echo $project_more[0]['business_plan']?>"><?php echo '('.$lang["download_view"].')'?><img src="/static/images/<?php echo substr($project_more[0]['business_plan'], strrpos($project_more[0]['business_plan'],'.') + 1)?>.png"/></a></p>
				<?php
				$empty = false;
			endif;					
			if ($empty) echo '<p>'.$lang['not_downloads'].'</p>';
			?>
		</fieldset>
	</div>
	<div class="h_section partners">
		<fieldset class="field">
			<legend><?php echo $lang['scheme_budget']?></legend>
			<?php
			$empty = true;			
			if (!empty($project_more[0]['scheme_budget'])):
				?>
				<p><a href="<?php echo $front_url?>doc/<?php echo $project_more[0]['scheme_budget']?>"><?php echo '('.$lang["download_view"].')'?><img src="/static/images/<?php echo substr($project_more[0]['scheme_budget'], strrpos($project_more[0]['scheme_budget'],'.') + 1)?>.png"/></a></p>
				<?php
				$empty = false;
			endif;					
			if ($empty) echo '<p>'.$lang['not_downloads'].'</p>';
			?>
		</fieldset>
	</div>
</div>