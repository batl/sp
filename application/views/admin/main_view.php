<div id="wrapper">
		<div id="content">		
			<h2><?php echo $lang['overview'];?></h2>
			<div id="overview">
				<div id="dealer-info" style="font-size:11px;">
					<!--h3><?php echo $lang['last_comments']?></h3-->
					<div id="comments_content">
						<table>
						<?php
							foreach ($summary as $key=>$value):
								echo '<tr><td style="padding:5px;"><strong>'.$lang[$key].'</strong></td><td>&nbsp;</td><td style="text-align:center;">'.$value.'</td></tr>';
							endforeach;
						?>		
						</table>
						<p><?php //echo $lang['rating_pages_visits'];?></p>
						<?php //echo $pages;?>
					</div>
				</div><!--  #dealer-info -->
				<div id="total-commission"><?php echo $lang['count_projects'];?> <span><?php echo $statistics['projects']['count']?></span></div><!--  #total-commission -->
				<div id="stats-box" style="width:380px;">
					<h3><?php echo $lang['new_projects'];?></h3>
					<?php 
					if (!empty($statistics['projects']['new'])):
						foreach ($statistics['projects']['new'] as $project):
						?>
							<span class="stats-label"><span class="stats-date"><?php echo date('Y-m-d', strtotime($project['post_date']))?></span>&nbsp;<?php echo $project['name']?></span>
							<div class="clear"></div>
							<span class="stats-description"><?php echo $project['short_description']?></span>
						<?php
						endforeach;
					else:
					?>
						<span class="stats"></span><span class="stats-label"><?php echo $lang['no_projects']?></span>
					<?php
					endif;
					?>										
				</div>
				<div id="stats-box" style="width:160px; margin-left:10px;">
					<h3><?php echo $lang['stats_projects'];?></h3>
					<span class="stats"><?php echo $statistics['projects']['count_today']?></span><span class="stats-label"><?php echo $lang['for_today']?></span>					
					<div class="clear"></div>
					<span class="stats"><?php echo $statistics['projects']['count_week']?></span><span class="stats-label"><?php echo $lang['for_week']?></span>					
					<div class="clear"></div>
					<span class="stats"><?php echo $statistics['projects']['count_month']?></span><span class="stats-label"><?php echo $lang['for_month']?></span>					
				</div>
			</div><!--  #overview -->
			
			<div id="order-view">
				<div id="sub-hdr"><h3><?php echo $lang['users']?>&nbsp;(<?php echo $statistics['users']['count']?>)</h3></div>
				<div id="grid">
					<div id="grid-hdr">
						<span class="grid-date"><?php echo $lang['signup_date']?></span><span class="grid-orderid"><?php echo $lang['email']?></span><span class="grid-name"><?php echo $lang['your_name']?></span><span class="grid-status"><?php echo $lang['confirmed']?></span>			
					</div>
					<?php
					if (!empty($statistics['users']['new'])):
						foreach ($statistics['users']['new'] as $user):
						?>
							<div id="data-row">
								<span class="grid-date"><?php echo date("m/d/y",strtotime($user['signup']))?></span><span class="grid-orderid"><?php echo $user['email']?></span><span class="grid-name"><?php echo $user['name']?></span><span class="grid-status"><?php if ((bool)$user['confirmed']) echo $lang['yes']; else echo $lang['no']?></span>	
							</div>	
						<?php
						endforeach;
					else:
					?>
						<div id="data-row">
							<span class="grid-date"><?php echo $lang['no_users']?></span>
						</div>
					<?php
					endif;
					?>
				</div>
				<div id="order-links">
					<ul>
						<!--<li><a href="">View All Order Activity</a></li>
						<li><a href="">Create New Order</a></li>-->
					</ul>
				</div>
			</div>
			<div id="blog-view">
				<div id="sub-hdr"><h3><?php echo $lang['visitors_statistics']?></h3></div>
				<div id="ideas_content">
					<p><?php echo $lang['visitsgraf']?></p>
					<?php echo $report_visits;?><br/>
					<p><?php echo $lang['pageviews']?></p>
					<?php echo $report_pageviews;?><br/>
					
				</div>
			</div>
							
		</div><!--  #content -->
	</div><!--  #wrapper -->	