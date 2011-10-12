<div id="wrapper">
	<div>
		<div style="float:right; width:300px;">				
			<?php
				if (!empty($poll)):
				?>
				<div id="anonses-container">
					<div class="sub-hdr"><h3><?php echo $lang['poll']?></h3></div>
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
				<?php
			endif;
			?>
				
		</div>
		<div id="news-container" style="width:635px;">
			<div id="sub-hdr"><h3><?php echo $lang['news']?></h3></div>
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
			<div id="limit"><a href="javascript:void(0);">5</a><a href="javascript:void(0);" class="selected">10</a><a href="javascript:void(0);">20</a><a href="javascript:void(0);">30</a></div>		
		</div><!--  #content-container -->
	</div>
	<div id="single_content">	
		<div class="sub-hdr"><h3><?php echo $lang['about_project']?></h3></div>
		<div id="dealer-content">
			<div class="h_section">
				<h2><?php echo $lang['poster']?></h2>			
				<div class="h_section_content">
					<?php echo $project['poster']?>
				</div>
			</div>
			<div class="h_section">
				<h2><?php echo $lang['note']?></h2>
				<div class="h_section_content">
					<?php echo $project['note']?>
				</div>
			</div>
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->