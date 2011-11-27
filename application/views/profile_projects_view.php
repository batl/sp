<?php foreach ($items_array as $project):?>
	<div class="project-item">
		<div class="anons_thumb">
			<img src="<?php if (!empty($project['logo']) && file_exists($project['logo'])) echo $base.$project['logo']; else echo $base.'static/images/no_image.jpg'?>" />
		</div>
		<div class="project-item-content">
			<a href="<?php echo $base.'project/'.$project['slug']?>" target="_blanck"><?php echo $project['name']?> <?php if ($project['in_process']) echo '<span style="color:red; font-size:11px;">('.$lang['in_process'].')</span>'?></a>
			<?php
				if (!empty($project['project_id'])):
					foreach ($projects as $value)
					{
						if ($value['id'] == $project['project_id']) echo '&nbsp;<span style="font-size:11px;">('.$lang['parent_project'].' <strong><a href="'.$base.'project/'.$value['slug'].'" target="_blank" style="color:red; cursor:pointer;">"'.$value['name'].'"</a></strong>)</span>';
					}
				endif;
			?>
			<br/>
			<?php 				
				if (!empty($project['date_start']) && $project['date_start'] != '0000-00-00')
				{
					$date = explode(" ",date("j M Y",strtotime($project['date_start'])));
					echo $lang['date_range'].': '.$lang['from'].' '.$date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
					if (!empty($project['date_end']) && $project['date_end'] != '0000-00-00')
					{
						$date = explode(" ",date("j M Y",strtotime($project['date_end'])));
						echo ' '.$lang['to'].' '.$date[0].' '.$lang['month'][strtolower($date[1])].' '.$date[2];	
					}
					echo '<br/>';
				}				
			?>
			<br/>
			<?php
				echo $lang['boss'].': '; echo !(empty($project['boss'])) ? $project['boss'] : $lang['no_data'];
			?>
			<br/><br/>
			<!-- Initiators section -->
			<div class="fieldset">
				<fieldset>
					<?php
						$project_initiators = json_decode($project['initiator'], true);
						$initiators = array();
						if (!empty($project_initiators))
						{
							foreach ($organizations as $organization)
							{	
								if (!empty($project_initiators) && is_array($project_initiators) && in_array($organization['id'], $project_initiators))
								{
									array_push($initiators, $organization['name']);											
								}
							}
						}						
					?>
					<legend><?php echo $lang['project_initiators']?> (<?php echo count($initiators);?>)</legend>
					<div class="expanded"> 						
						<div class='ginput_container' name="initiator">
							<?php																							
							if (!empty($initiators))
							{
								foreach ($initiators as $value)
								{										
									?>							
									&#8226;&nbsp;<span class="check_item" style="font-size:11px;"><?php echo $value?></span><br/>
									<?php																
								}
							}
							else echo $lang['no_data'];
							?>					
						</div>								
					</div>
				</fieldset>
				
				<!-- Organizators section -->
				<fieldset>
					<?php
						$project_organizers = json_decode($project['organizer'], true);
						$organizers = array();
						if (!empty($project_organizers))
						{
							foreach ($organizations as $organization)
							{			
								if (!empty($project_organizers) && is_array($project_organizers) && in_array($organization['id'], $project_organizers))
								{
									array_push($organizers, $organization['name']);								
								}
							}
						}						
					?>
					<legend><?php echo $lang['project_organizators']?> (<?php echo count($organizers);?>)</legend>
					<div class="expanded"> 						
						<div class='ginput_container' name="organizer">
							<?php																			
							if (!empty($organizers))
							{
								foreach ($organizers as $value)
								{												
									?>							
									&#8226;&nbsp;<span class="check_item" style="font-size:11px;"><?php echo $value?></span><br/>
									<?php									
								}
							}
							else echo $lang['no_data'];
							?>					
						</div>							
					</div>
				</fieldset>
			</div>			
			<?php
				$places = json_decode($project['places'], true);
				$project_places = array();
				
				foreach ($all_places as $place)
				{
					if (in_array($place['id'], $places)) array_push($project_places, $place['name']);
				}
				if (count($project_places)>1) echo $lang['places'].': '; else echo $lang['place'].': ';  
				if (!empty($project_places)) echo implode(', ', $project_places); else echo $lang['no_data'];
			?>
			<br/>
			<?php
				$categories = json_decode($project['category_id'], true);				
				$project_categories = array();
				
				foreach ($all_categories as $category)
				{
					if (in_array($category['id'], $categories)) array_push($project_categories, $category['name']);
				}
				if (count($project_categories)>1) echo $lang['groups'].': '; else echo $lang['group'].': ';  
				if (!empty($project_categories)) echo implode(', ', $project_categories); else echo $lang['no_data'];								
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
			<!-- Comments section -->
			<div class="fieldset">
				<fieldset>
					<?php						
						/*$project_comments = array();
						if (!empty($comments))
						{
							foreach ($comments as $comment)
							{	
								if ($comment['project_id'] == $project['id']) array_push($project_comments, $comment);								
							}
						}	*/					
					?>
					<legend><?php echo $lang['comments']?> <?php //echo count($project_comments);?></legend>
					<div class="expanded"> 						
						<!--<div class='ginput_container comments' name="initiator">
							<?php																							
							if (!empty($project_comments))
							{
								foreach ($project_comments as $comment)
								{										
									$comment_date = explode(" ",date("j M Y H:i:s",strtotime($comment['date'])));
									?>							
									<p>									
										<?php
											if ($comment['comment_id'])
											{
												foreach ($project_comments as $value)
												{
													if ($value['id'] == $comment['comment_id'])
													{
														echo '<span style="font-size:11px;"><strong>@'.$value['author'].'</strong>&nbsp;&#8592;&nbsp;</span>'; break;
													}
												}
											}
										?>
										<span style="font-size:11px;"><?php echo $comment['author'].' - '.$comment_date[0].' '.$lang['month'][strtolower($comment_date[1])].' '.$comment_date[2].' '.$comment_date[3];?> </span><br/>
										<span class="check_item" style="font-size:11px;"><?php echo $comment['body']?></span><br/>
										<a href="javascript:void(0);" class="do_comment" id="<?php echo $project['id'].'_'.$comment['id'];?>"><?php echo $lang['reply']?></a>
									</p>
									<?php																
								}
							}
							else echo $lang['no_data'];
							?>					
							<br/>
							<a href="javascript:void(0);" class="do_comment" id="<?php echo $project['id'].'_0'?>"><?php echo $lang['commenting']?></a>
						</div>-->
						<div id="project_<?php echo $project['id']?>" class="vk_comments"></div>
					</div>
				</fieldset>
			</div>
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
