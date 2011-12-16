<div id="wrapper">
	<div>
		<div id="poll-container" style="float:right; width:300px;">				
			<?php
				if (!empty($poll)):
				?>
				<div id="anonses-container" class="switcher_parent">
					<div class="sub-hdr"><h3><?php echo $lang['poll']?></h3><!--span class="switcher hide_switcher"></span--></div>
					<div class="switcher_content">
						<div class="poll">
							<p class="poll_title"><?php echo $poll['name']?></p>
							<?php
							
							$poll_cookie = $this->input->cookie('poll_'.$poll['id']);
							
							if (!empty($poll_cookie) && $poll_cookie == $poll['id'])
							{
								if (!empty($poll_answers))
								{
									foreach ($poll_answers as $answer)
									{
										if (!empty($answer['thumb'])):
										?>
											<a class="lightbox" href="<?php echo $base.$answer['image']?>"><img height="50px;" src="<?php echo $base.$answer['thumb']?>"/></a>
										<?php
										endif;
										?>
											<div><?php echo $answer['name']?>&nbsp;<span><?php echo $answer['count']?></span></div><br/>
										<?php
									}
								}
							}
							else
							{
								if (!empty($poll_answers))
								{
									foreach ($poll_answers as $answer)
									{
										if (!empty($answer['thumb'])):
										?>
											<a class="lightbox" href="<?php echo $base.$answer['image']?>"><img height="50px;" src="<?php echo $base.$answer['thumb']?>"/></a>
										<?php
										endif;
										?>
											<div id="<?php echo $answer['id']?>"><?php echo $answer['name']?>&nbsp;<a poll_id="<?php echo $poll['id']?>" answer_id="<?php echo $answer['id']?>" href="javascript:void(0);" class="set_poll"><?php echo $lang['set_poll']?></a></div><br/>
										<?php
									}
								}
							}
							?>
						</div>
					</div>
				</div>
				<?php
			endif;
			?>
				
		</div>
		
		<div id="news-container" class="switcher_parent" <?php if (!empty($poll)):?> style="width:635px; display:none;" <?php else: ?> style="width:100%;display:none;" <?php endif;?>>
			<div id="sub-hdr"><h3><?php echo $lang['news']?></h3><!--span class="switcher hide_switcher"></span--></div>
			<div class="switcher_content">
				<div id="items" class="items">
							
				</div>
				<div id="paging">
					<a class="first_page" href="javascript:void(0);">
						<img src="/static/images/btn_page_begin.png" />
					</a> 
					<a class="prev_page" href="javascript:void(0);">
						<img src="/static/images/btn_page_previous.png" />
					</a>										
					
					<li class="total">
						<span><?php echo $lang['of']?> </span><span></span>
					</li>
					<a  class="next_page" href="javascript:void(0);">
						<img src="/static/images/btn_page_next.png" />
					</a> 
					<a  class="last_page" href="javascript:void(0);">
						<img src="/static/images/btn_page_end.png" />
					</a>
				</div>
				<div id="limit"><span><?php echo $lang['records_per_page']?>:</span>&nbsp;<a href="javascript:void(0);" class="selected">5</a><a href="javascript:void(0);">10</a><a href="javascript:void(0);">20</a><a href="javascript:void(0);">30</a></div>		
			</div>
		</div><!--  #content-container -->		
		<?php
			if (!empty($project_photos)):?>
			
			<div id="photos-container">
				<div class="sub-hdr"><h3><?php echo $lang['project_photoreport']?></h3></div>
			<?php
				foreach ($project_photos as $photo):
				?>
					<div class="step-item-img" style="width:auto; height:auto;">
						<a class="lightbox" href="<?php echo $base.$photo['foto']?>"><img src="<?php echo $base.$photo['thumb']?>" /></a>							
					</div>
				<?php
				endforeach;
				?>
				<a href="javascript:void(0);" id="all_photos"><?php echo $lang['all_photos']?></a>
			</div>
			<?php
			endif;	
		?>					
		<div id="map_canvas" style="height:300px;display:none; text-align:center;"><h3><?php if (!empty($project['map_img'])):?><img src="<?php echo $base.$project['map_img']?>"/><?php else: echo $lang['no_project_map']; endif;?></h3></div>		
		<input type='hidden' class='gform_hidden' name='map' value='<?php echo $project['map']?>'/>
		<input type='hidden' class='gform_hidden' name='map_description' value='<?php echo $project['map_description']?>'/>
	</div>
	<div id="about_project">
		<h2 style="color:<?php echo $project['title_color']?>"><?php echo $project['name']?> </h2>
		<fieldset class="field">
			 <legend><?php echo $lang['purpose']?></legend>
			<?php echo $project['purpose']?>																	
		</fieldset>
		<div class="h_section">				
			<div class="h_section_content">
				<?php echo $project['note']?>
			</div>
		</div>
	</div>
	<div id="single_content">	
		
	</div><!--  #content -->
</div><!--  #wrapper -->