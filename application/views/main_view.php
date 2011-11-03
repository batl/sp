<div id="wrapper">
	<div id="content">		
		<div id="dealer-content">			
			<div style="float:right; width:300px;">
				<div id="anonses-container">
					<div class="sub-hdr"><h3><?php echo $lang['anonses']?></h3></div>
					<div id="s1" style="height:275px; margin-left:5px; overflow:hidden;">
						<?php
							foreach ($anonses as $anons)
							{
							?>	
								<div>
									<a href="<?php echo $anons['link']?>" target="_blank"><img width="290px" src="<?php echo $base.$anons['image']?>" /></a>
									<div style="text-align:center;">
										<h1><?php echo $anons['name']?></h1>
										<?php echo $anons['description']?>
									</div>
								</div>
							<?php
							}
						?>												
					</div>
					
				</div>
				
				<?php
					if (!empty($poll)):
					?>
					<div id="anonses-container" style="margin-top:20px;">
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
			<div id="news-container">
				<div id="sub-hdr"><h3><?php echo $lang['news']?></h3></div>
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
				<div id="limit"><span><?php echo $lang['records_per_page']?>:</span>&nbsp;<a href="javascript:void(0);" class="selected">5</a><a href="javascript:void(0);">10</a><a href="javascript:void(0);">20</a><a href="javascript:void(0);">30</a></div>		
			</div><!--  #content-container -->
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->