<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Main extends Crank {

	public function __construct()
	{
		parent::__construct();					
		
		$this->load->model("User_model");
		$this->load->library('GoogleAnalytics', array('email' => 'maxdmitrief@gmail.com', 'pass' => 'cmd01021987'));
		$this->params['main_navi'] = 1;			
		
	}
	public function index()
	{	
		if (empty($this->params['admin_id']))
		{
			$this->set_title($this->params['lang']['login']);
			$this->include_keywords($this->params['lang']['login']);
			$this->set_description($this->params['lang']['login']);		
			$this->include_js('admin/pages/login.js');
			$this->include_view('login_view',$this->params);
		}
		else
		{
			$this->set_title($this->params['lang']['menu_home']);
			$this->include_keywords($this->params['lang']['menu_home']);
			$this->set_description($this->params['lang']['menu_home']);

			try {
			
				// set the Google Analytics profile you want to access - format is 'ga:123456';
				$this->googleanalytics->setProfile('ga:53891452');

				// set the date range we want for the report - format is YYYY-MM-DD
				$this->googleanalytics->setDateRange('2011-11-17','2011-12-17');

				// get the report for date and country filtered by Australia, showing pageviews and visits
				$report = $this->googleanalytics->getReport(
					array('dimensions'=>urlencode('ga:date'),
						'metrics'=>urlencode('ga:visits'),
						//'filters'=>urlencode('ga:country=@Australia'),
						'sort'=>'ga:visits'
						)
					);
				
				$report_views = $this->googleanalytics->getReport(
					array('dimensions'=>urlencode('ga:date'),
						'metrics'=>urlencode('ga:pageviews'),
						//'filters'=>urlencode('ga:country=@Australia'),
						'sort'=>'ga:pageviews'
						)
					);
				
				$report_pages = $this->googleanalytics->getReport(
					array('dimensions'=>urlencode('ga:pagePath'),
						'metrics'=>urlencode('ga:pageviews'),
						'filters'=>urlencode('ga:pageviews>0'),
						'sort'=>'-ga:pageviews'
						)
					);
				
				$summary = $this->googleanalytics->getReport(
					array('dimensions'=>'ga:date',
						'metrics'=>join(array_reverse(array('ga:visits', 'ga:bounces', 'ga:entrances', 'ga:timeOnSite', 'ga:newVisits')), ','),
						'filters'=>'',
						'sort'=>''
						)
					);
				$report_summary = array(
					'ga:newVisits' => 0,
					'ga:timeOnSite' => 0,
					'ga:entrances' => 0,
					'ga:bounces' => 0,
					'ga:visits' => 0
				);	
				foreach ($summary as $sdate)
				{
					foreach ($sdate as $key => $value)
					{
						$report_summary[$key] += $value;
					}
				}		
				
			} catch (Exception $e) { 
				print 'Error: ' . $e->getMessage(); 
			}
			
			$this->params['pages'] = '';
			
			if (!empty($report_pages))
			{
				$this->params['pages'] = '<ul>';
				$i = 0;
				foreach ($report_pages as $url => $views)
				{
					if ($i == 9) break;
					$this->params['pages'] .= '<li><a href="'.$this->params['front_url'].$url.'">'.$url.' - <b>'.$views['ga:pageviews'].'</b></a></li>';	
					$i++;
				}
				$this->params['pages'] .= '</ul>';
			}
			
			$this->params['report_visits'] = '<img width="450" height="200" src="'.$this->create_google_chart_url(440, 200, $report, 'ga:visits').'"/>';
			$this->params['report_pageviews'] = '<img width="450" height="200" src="'.$this->create_google_chart_url(440, 200, $report_views, 'ga:pageviews').'"/>';
			
			$this->params['summary'] = array(
				'visits' => number_format($report_summary['ga:visits']),
				'pageviews' => number_format($this->total_pageviews),
				'pages_visits' => round($this->total_pageviews / $report_summary['ga:visits'], 2),
				'bounce_rate'	=> round($report_summary['ga:bounces'] / $report_summary['ga:entrances'] * 100, 2)."%",
				'time_on_site'	=> $this->convert_seconds_to_time($report_summary['ga:timeOnSite'] / $report_summary['ga:visits']),
				'new_visits'	=> round($report_summary['ga:newVisits'] / $report_summary['ga:visits'] * 100, 2)."%"
			);						
			
			$this->include_js('jquery/ui/jquery.ui.core.js');		
			$this->include_js('jquery/ui/jquery.ui.widget.js');		
			$this->include_js('jquery/ui/jquery.ui.mouse.js');		
			$this->include_js('jquery/ui/jquery.ui.position.js');		
			$this->include_js('jquery/ui/jquery.ui.draggable.js');		
			$this->include_js('jquery/ui/jquery.ui.dialog.js');			
			$this->include_js('admin/pages/panel.js');
			$this->include_css('ui/jquery.ui.all.css');		
			/* Set statistics data */
			
			$this->params['statistics'] = array(
			
				'projects' => array(
					'count' => $this->Crank_model->get_count_entries('sp_projects'),
					'new'   => $this->Crank_model->get_all_entries('sp_projects',array(), 0, 3, 'post_date', 'desc', array('sp_projects' => array('name', 'post_date', 'short_description'))),
					'count_today' => count($this->Crank_model->get_all_entries('sp_projects',array('post_date >=' => date("Y-m-d 00:00:00"), 'post_date <=' => date("Y-m-d H:i:s", strtotime(date("Y-m-d").' +1 day'))), 0, false, 'id', 'desc', array('sp_projects' => array('name')))),
					'count_week'  => count($this->Crank_model->get_all_entries('sp_projects',array('post_date >=' => date("Y-m-d H:i:s", strtotime(date("Y-m-d").' -1 week')), 'post_date <' => date("Y-m-d H:i:s", strtotime(date("Y-m-d").' +1 day'))), 0, false, 'id', 'desc', array('sp_projects' => array('name')))),
					'count_month' => count($this->Crank_model->get_all_entries('sp_projects',array('post_date >=' => date("Y-m-d H:i:s", strtotime(date("Y-m-d").' -1 month')), 'post_date <' => date("Y-m-d H:i:s", strtotime(date("Y-m-d").' +1 day'))), 0, false, 'id', 'desc', array('sp_projects' => array('name'))))				
				),
				'users'	  => array(
					'count' => $this->Crank_model->get_count_entries('sp_users'),
					'new'   => $this->Crank_model->get_all_entries('sp_users',array(), 0, 6, 'signup', 'desc', array('sp_users' => array('name', 'email', 'signup', 'confirmed')))
				)
			
			);
			
			if (!empty($this->params['statistics']['projects']['new']))
			{
				foreach ($this->params['statistics']['projects']['new'] as $key => $value)
				{
					$this->params['statistics']['projects']['new'][$key]['short_description'] = $this->sub_text($this->params['statistics']['projects']['new'][$key]['short_description'], 10, 55);
				}
			}						
			
			/* End statistics data */
			
			$this->include_view('main_view',$this->params);
		}
	}
	
	public function logout()
	{
		$this->session->unset_userdata('admin_id');
		redirect($this->params['base']);
	}
	
	function sub_text($text,$maxwords = 5, $maxchar = 25) {
		
		$words = explode(' ',$text);
		$text='';
		foreach ($words as $word) {
			if (mb_strlen($text.' '.$word)<$maxchar) {
				$text.=' '.$word;
			}
			else {
				$text.='...';
				break;
			}
		}
		return $text;
	}
	
	public function get_last_comments(){
		$this->params['comments'] = $this->Crank_model->get_all_entries(
			'sp_projects_comments',
			array(), 
			0, 
			5, 
			'date', 
			'desc', 
			array(
				'sp_projects_comments' => array('id', 'author', 'date', 'body', 'visible'),
				'sp_projects' => array('name')
			),
			array(
				'sp_projects' => 'project_id'
			)
		);
		$html = '';
		if (!empty($this->params['comments']))
		{			
			foreach ($this->params['comments'] as $key => $value)
			{
				$this->params['comments'][$key]['name'] = $this->sub_text($this->params['comments'][$key]['name'], 10, 55);
				$this->params['comments'][$key]['body'] = $this->sub_text($this->params['comments'][$key]['body'], 10, 55);
				$post_date = explode(" ",date("j M Y H:i:s",strtotime($this->params['comments'][$key]['date'])));				
				
				($this->params['comments'][$key]['visible'])?$color = 'green':$color = 'red';
				
				$html .= '<div class="single_comment" rel="'.$this->params['comments'][$key]['visible'].'" id="'.$this->params['comments'][$key]['id'].'" style="background:'.$color.'; position:relative;">
				<span>'.$this->params['comments'][$key]['name'].' - '.$post_date[0].' '.$this->params['lang']['month'][strtolower($post_date[1])].' '.$post_date[2].' '.$post_date[3].'</span><br/>
				<span>'.$this->params['comments'][$key]['author'].'</span><br/>
				<span>'.$this->params['comments'][$key]['body'].'</span><br/>
				<span class="comments_actions">
					<span href="javascript:void(0);" class="moderate_comment" style="position:absolute; right:3px; bottom:3px;">'.$this->params['lang']['moderate'].'</span>
					<span href="javascript:void(0);" class="remove_comment" style="position:absolute; right:3px; top:3px;">'.$this->params['lang']['remove'].'</span>
				</span>
				</div>';
			}
		}
		else $html = $this->params['lang']['no_data'];		
		
		echo json_encode(array('html' => $html));
	}
	
	public function get_last_ideas(){
		$this->params['ideas'] = $this->Crank_model->get_all_entries(
			'sp_ideas',
			array(), 
			0, 
			3, 
			'post_date', 
			'desc', 
			array(
				'sp_ideas' => array('id', 'name', 'author', 'post_date', 'description', 'visible')				
			)
		);
		$html = '';
		if (!empty($this->params['ideas']))
		{			
			foreach ($this->params['ideas'] as $key => $value)
			{
				$this->params['ideas'][$key]['description'] = $this->sub_text($this->params['ideas'][$key]['description'], 10, 55);				
				$post_date = explode(" ",date("j M Y H:i:s",strtotime($this->params['ideas'][$key]['post_date'])));				
				
				($this->params['ideas'][$key]['visible'])?$color = 'green':$color = 'red';
				
				$html .= '
				<div class="news-home single_idea" rel="'.$this->params['ideas'][$key]['visible'].'" id="'.$this->params['ideas'][$key]['id'].'">
					<a href="" style="color:'.$color.'">'.$this->params['ideas'][$key]['name'].'</a><br />
					'.$this->params['ideas'][$key]['author'].' - '.$post_date[0].' '.$this->params['lang']['month'][strtolower($post_date[1])].' '.$post_date[2].' '.$post_date[3].'<br />
					'.$this->params['ideas'][$key]['description'].'<br/>
					<span class="idea_actions">
						<span href="javascript:void(0);" class="moderate_idea" style="position:absolute; right:3px; bottom:3px;">'.$this->params['lang']['moderate'].'</span>
						<span href="javascript:void(0);" class="remove_idea" style="position:absolute; right:3px; top:3px;">'.$this->params['lang']['remove'].'</span>
					</span>
				</div>';									
			}
		}
		else $html = $this->params['lang']['no_data'];		
		
		echo json_encode(array('html' => $html));
	}
	
	public function update_weight()
	{
		$ids    = $this->input->post('ids');
		$weight = min($this->input->post('weight'));				
		
		$this->load->model("Page_model");
		
		foreach ($ids as $key => $id) $this->Page_model->update_page($id, array('weight' => $weight+$key));
		
		echo json_encode(array('message' => $this->params['lang']['weight_update']));
	}
	
	public function confirm_user()
	{
		$this->load->model("User_model");
		
		$id = $this->input->post('id');
		
		$user = $this->User_model->get_user_by_data(array('id' => $id), true);
		
		$this->send_mail($user['email'], 'successfull@support.com', $this->params['lang']['signup_subject'], $this->params['lang']['confirmation_mail']);
												
		if ($this->User_model->entry_confirmed($id))
		{
			echo json_encode(array('result' => true, 'message' => $this->params['lang']['user_successfully_confirmed']));
		}
		else
		{
			echo json_encode(array('result' => false, 'message' => $this->params['lang']['user_failed_confirmed']));
		}
				
	}
	
	public function check_admin()
	{
		$data = array(
			'result' => true,
			'message' => ''
		);
		
		$user_id = $this->User_model->chek_admin_entry();
		
		if ($user_id) 
		{
			$this->session->set_userdata(array('admin_id' => $user_id));
			echo json_encode($data);
		}
		else 
		{
			$data['result'] = false;
			$data['message'] = $this->params['lang']['incorect_login'];
			echo json_encode($data);
		}
	}
	
	function convert_seconds_to_time($time_in_seconds)
    {
		$hours = floor($time_in_seconds / (60 * 60));
		$minutes = floor(($time_in_seconds - ($hours * 60 * 60)) / 60);
		$seconds = $time_in_seconds - ($minutes * 60) - ($hours * 60 * 60);

		return sprintf('%02d:%02d:%02d', $hours, $minutes, $seconds);
	}
	
	function create_google_chart_url($width, $height, $report, $type)
	{	
		$start_date_ts = time() - (60 * 60 * 24 * 30); // 30 days in the past
			
		$this->x_axis_labels = '';
		$this->y_axis_labels = '';
		$this->chart_values = '';
		$this->minvalue = 999999999;
		$this->maxvalue = 0;
		$this->total_count = sizeof($report);
		$this->total_pageviews = 0;
		$this->first_monday_index = -1;
		$count = 0;
		
		foreach($report as $pageview)
		{
		  $current_date = $start_date_ts + (60 * 60 * 24 * $count);
		  $day = date('w', $current_date); // 0 = sun 6 = sat

		  if( $day == 1 ) // monday
		  {
			if( $this->first_monday_index == -1 )
			{
			  $this->first_monday_index = $count;
			}
			$this->x_axis_labels .= '|' . urlencode(date('D m/d', $current_date));
			$this->y_axis_labels .= round($count/($this->total_count-1)*100, 2) . ',';
		  }

		  if($this->minvalue > $pageview[$type]) $this->minvalue = $pageview[$type];
		  if($this->maxvalue < $pageview[$type]) $this->maxvalue = $pageview[$type];

		  $this->chart_values .= $pageview[$type] . ($count < $this->total_count-1 ? "," : "");
		  $count++;
		  $this->total_pageviews += $pageview[$type];
		}

		$this->y_axis_labels = substr($this->y_axis_labels, 0, strlen($this->y_axis_labels)-1);
		
		return "http://chart.apis.google.com/chart?chs=" . $width . "x" . $height . "&chf=bg,s,FFFFFF00&cht=lc&chco=0077CC&chd=t:" . $this->chart_values . "&chds=" . ($this->minvalue - 20). "," . ($this->maxvalue + 20) . "&chxt=x,y&chxl=0:" . $this->x_axis_labels . "&chxr=1," . $this->minvalue . "," . $this->maxvalue . "&chxp=0," . $this->y_axis_labels . "&chm=V,707070,0," . $this->first_monday_index . ":" . $this->total_count . ":7,1|o,0077CC,0,-1.0,6";
	}
}

/* End of file main.php */
/* Location: ./application/controllers/main.php */