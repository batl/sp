<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Main extends Crank {

	public function __construct()
	{
		parent::__construct();					
		
		$this->load->model("User_model");
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
				
				$html .= '<p class="single_comment" rel="'.$this->params['comments'][$key]['visible'].'" id="'.$this->params['comments'][$key]['id'].'" style="background:'.$color.'; position:relative;">
				<span>'.$this->params['comments'][$key]['name'].' - '.$post_date[0].' '.$this->params['lang']['month'][strtolower($post_date[1])].' '.$post_date[2].' '.$post_date[3].'"</span><br/>
				<span>#"'.$this->params['comments'][$key]['id'].' '.$this->params['comments'][$key]['author'].'"</span><br/>
				<span>'.$this->params['comments'][$key]['body'].'</span><br/>
				<span class="comments_actions">
					<span href="javascript:void(0);" class="moderate_comment" style="position:absolute; right:3px; bottom:3px;">'.$this->params['lang']['moderate'].'</span>
					<span href="javascript:void(0);" class="remove_comment" style="position:absolute; right:3px; top:3px;">'.$this->params['lang']['remove'].'</span>
				</span>
				</p>';
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
}

/* End of file main.php */
/* Location: ./application/controllers/main.php */