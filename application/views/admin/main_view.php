<div id="wrapper">
		<div id="content">		
			<h2><?php echo $lang['overview'];?></h2>
			<div id="overview">
				<div id="dealer-info">
					<!--<h3>Membership Level</h3>
					<p>Diamond - Commission Rate: 30%</p>	
					<h3>Your AnyArt Dealer Referral ID</h3>
					<p>johnconnor</p>
					<h3>Your Anyart Web URL</h3>
					<p><a href="">www.anyart.com/johnconnor</a></p>
					<h3>Your Website Traffic (# of Hits)</h3>
					<p><div id="site-stats">1,200,000</div></p>							-->
				</div><!--  #dealer-info -->
				<div id="total-commission"><?php echo $lang['count_projects'];?> <span><?php echo $statistics['projects']['count']?></span></div><!--  #total-commission -->
				<div id="stats-box">
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
				<div id="stats-box">
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
				<!--<div id="sub-hdr"><h3>Recent Blog News</h3></div>
				<div class="news-home">
					<a href="">Autumn by Jean McConnell</a><br />
					Tue, 12 Apr 2011 11:09:00<br />
					Take a look at a painting sent in for June's painting project on abstracting nature. 
				</div>
				<div class="news-home">
					<a href="">Geometric Abstracts Project</a><br />
					Mon, 11 Apr 2011 11:44:00 +0100<br />
					Join in this painting project, the challenge of which is to paint a geometric abstract, using something in nature as a source of inspiration if it makes it easier. 
				</div>
				<div class="news-home">
					<a href="">Different Rules of Thirds</a><br />
					Tue, 12 Apr 2011 01:05:00 +0100<br />
					When I think of the Rule of Thirds, I'm thinking of it as the composition rule that makes it easy to decide where to put the focus of a painting.... 
				</div>-->
			</div>
							
		</div><!--  #content -->
	</div><!--  #wrapper -->