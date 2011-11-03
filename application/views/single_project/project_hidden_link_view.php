<div id="hidden_links">
	<div class="h_section partners">
		<fieldset>
			<legend><?php echo $lang['resourses']?></legend>
			<?php
			$empty = true;
			foreach ($project_more as $step):		
				if (!empty($step['resourses'])):				
					?>				
					<p><span><?php echo '"'.$step['name'].'" '?></span><a href="<?php echo $front_url?>doc/<?php echo $step['resourses']?>"><?php echo '('.$lang["download_view"].')'?><img src="/static/images/<?php echo substr($step['resourses'], strpos($step['resourses'],".") + 1)?>.png"/></a></p>
					<?php
					$empty = false;
				endif;		
			endforeach;
			if ($empty) echo '<p>'.$lang['not_downloads'].'</p>';
			?>
		</fieldset>
	</div>
	<div class="h_section partners">
		<fieldset>
			<legend><?php echo $lang['project_plan']?></legend>
			<?php
			$empty = true;
			foreach ($project_more as $step):		
				if (!empty($step['project_plan'])):
					?>
					<p><span><?php echo '"'.$step['name'].'" '?></span><a href="<?php echo $front_url?>doc/<?php echo $step['project_plan']?>"><?php echo '('.$lang["download_view"].')'?><img src="/static/images/<?php echo substr($step['project_plan'], strrpos($step['project_plan'],'.') + 1)?>.png"/></a></p>
					<?php
					$empty = false;
				endif;		
			endforeach;
			if ($empty) echo '<p>'.$lang['not_downloads'].'</p>';
			?>
		</fieldset>
	</div>
	<div class="h_section partners">
		<fieldset>
			<legend><?php echo $lang['application_form']?></legend>
			<?php
			$empty = true;
			foreach ($project_more as $step):		
				if (!empty($step['application_form'])):
					?>
					<p><span><?php echo '"'.$step['name'].'" '?></span><a href="<?php echo $front_url?>doc/<?php echo $step['application_form']?>"><?php echo '('.$lang["download_view"].')'?><img src="/static/images/<?php echo substr($step['application_form'], strrpos($step['application_form'],'.') + 1)?>.png"/></a></p>
					<?php
					$empty = false;
				endif;		
			endforeach;
			if ($empty) echo '<p>'.$lang['not_downloads'].'</p>';
			?>
		</fieldset>
	</div>
	<div class="h_section partners">
		<fieldset>
			<legend><?php echo $lang['business_plan']?></legend>
			<?php
			$empty = true;
			foreach ($project_more as $step):		
				if (!empty($step['business_plan'])):
					?>
					<p><span><?php echo '"'.$step['name'].'" '?></span><a href="<?php echo $front_url?>doc/<?php echo $step['business_plan']?>"><?php echo '('.$lang["download_view"].')'?><img src="/static/images/<?php echo substr($step['business_plan'], strrpos($step['business_plan'],'.') + 1)?>.png"/></a></p>
					<?php
					$empty = false;
				endif;		
			endforeach;
			if ($empty) echo '<p>'.$lang['not_downloads'].'</p>';
			?>
		</fieldset>
	</div>
	<div class="h_section partners">
		<fieldset>
			<legend><?php echo $lang['scheme_budget']?></legend>
			<?php
			$empty = true;
			foreach ($project_more as $step):		
				if (!empty($step['scheme_budget'])):
					?>
					<p><span><?php echo '"'.$step['name'].'" '?></span><a href="<?php echo $front_url?>doc/<?php echo $step['scheme_budget']?>"><?php echo '('.$lang["download_view"].')'?><img src="/static/images/<?php echo substr($step['scheme_budget'], strrpos($step['scheme_budget'],'.') + 1)?>.png"/></a></p>
					<?php
					$empty = false;
				endif;		
			endforeach;
			if ($empty) echo '<p>'.$lang['not_downloads'].'</p>';
			?>
		</fieldset>
	</div>
</div>