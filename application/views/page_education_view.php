<div id="wrapper">
	<div id="content">				
		<div id="dealer-content">	
			<div class="left-bar">
				<div id="sub-nav">
					<ul>												
						<li><a id="education/type/methodics" href="javascript:void(0);" class="selected"><?php echo $lang['methodics']?></a></li>					
						<li><a id="education/type/couches" href="javascript:void(0);"><?php echo $lang['couches']?></a></li>											
					</ul>
				</div>				
			</div>
			
			<div id="content-container">
				<div id="sub-hdr">
					<h3><?php echo $lang['methodics']?></h3>
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
				<div id="limit"><span><?php echo $lang['records_per_page']?>:</span>&nbsp;<a href="javascript:void(0);" class="selected">5</a><a href="javascript:void(0);">10</a><a href="javascript:void(0);">20</a><a href="javascript:void(0);">30</a></div>		
			</div><!--  #content-container -->
		</div>
	</div><!--  #content -->
</div><!--  #wrapper -->