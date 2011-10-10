<div id="wrapper">
	<div id="content">				
		<div id="dealer-content">
			<?php echo $page['body']?>
			<div style="width:225px; float:left;">
				<div id="sub-nav">
					<ul>
						<li><a class="selected" id="goods" href="javascript:void(0);"><?php echo $lang['goods']?></a></li>
						<li><a id="services" href="javascript:void(0);"><?php echo $lang['services']?></a></li>					
					</ul>
				</div>
				
				<?php
					if (!empty($poll)):
					?>
					<div id="poll" style="margin-top:20px;">
						<div class="sub-hdr"><h3><?php echo $lang['poll_title']?></h3></div>
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
												<a class="lightbox" rel="1" href="<?php echo $base.$answer['image']?>"><img height="50px;" src="<?php echo $base.$answer['thumb']?>"/></a>
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
												<a class="lightbox" rel="1" href="<?php echo $base.$answer['image']?>"><img height="50px;" src="<?php echo $base.$answer['thumb']?>"/></a>
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
			<div id="content-container">
				<div id="sub-hdr"><h3><?php echo $lang['goods']?></h3></div>
				<div id="items" class="items">
					
				</div>

				<div id="paging">
					<a class="first_page" href="javascript:void(0);">
						<img src="static/images/btn_page_begin.png" />
					</a> 
					<a class="prev_page" href="javascript:void(0);">
						<img src="static/images/btn_page_previous.png" />
					</a>										
					
					<li class="total">
						<span><?php echo $lang['of']?> </span><span></span>
					</li>
					<a  class="next_page" href="javascript:void(0);">
						<img src="static/images/btn_page_next.png" />
					</a> 
					<a  class="last_page" href="javascript:void(0);">
						<img src="static/images/btn_page_end.png" />
					</a>
				</div>	
				<div id="limit"><a href="javascript:void(0);">5</a><a href="javascript:void(0);" class="selected">10</a><a href="javascript:void(0);">20</a><a href="javascript:void(0);">30</a></div>		
			</div><!--  #content-container -->
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->