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
						<div class="sub-hdr">
							<h3><?php echo $lang['poll_title']?></h3>							
						</div>
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
				<div id="sub-hdr">
					<h3><?php echo $lang['goods']?></h3>
					<div id="tag_search">
						<div class="clear_search"></div><input id="search" type="text" value="" style="height:18px; width:150px; float:left;"/>
						<div id="search_btn"></div>
						<div id="sort_by_block">
							<span><?php echo $lang['sort_by']?></span>
							<select id="sort_by">
								<option value="id"><?php echo $lang['default']?></option>
								<option value="name"><?php echo $lang['name']?></option>								
							</select>
							<a href="javascript:void(0);" title="<?php echo $lang['sort_direction']?>" id="sort_direction" rel="asc">&nbsp;&#8595;</a>
						</div>
					</div>
				</div>
				<div id="filters">					
					<span style="color:#000;"><?php echo $lang['groups']?>:&nbsp;</span>
					<span rel="goods">
						<a class="groups selected" rel="0"><?php echo $lang['all']?></a>
						<?php
							foreach ($goods_categories as $category)
							{
							?>
							&nbsp;|&nbsp;<a class="groups" rel="<?php echo $category['id']?>"><?php echo $category['name'];?></a>
							<?php
							}
						?>					
					</span>
					<span rel="services" class="hidden">
						<a class="groups selected" rel="0"><?php echo $lang['all']?></a>
						<?php
							foreach ($services_categories as $category)
							{
							?>
							&nbsp;|&nbsp;<a class="groups" rel="<?php echo $category['id']?>"><?php echo $category['name'];?></a>
							<?php
							}
						?>
					</span>
				</div>
				<fieldset id="search_block">
				   <legend><?php echo $lang['expanded_search']?></legend>
				   <div id="search_fields"> 
						<span><?php echo $lang['name']?>:&nbsp;</span><input name="name" type="text" value=""/>
						<div class="clear"></div>
						<input id="expanded_search" type="button" class="button" value="<?php echo $lang['search'];?>"/>
				   </div>
				</fieldset>
				
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
				<div id="limit"><span><?php echo $lang['records_per_page']?>:</span>&nbsp;<a href="javascript:void(0);">4</a><a href="javascript:void(0);" class="selected">12</a><a href="javascript:void(0);">24</a><a href="javascript:void(0);">48</a></div>		
			</div><!--  #content-container -->
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->