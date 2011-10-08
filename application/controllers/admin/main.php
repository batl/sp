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
			
			
			/* End statistics data */
			
			$this->include_view('main_view',$this->params);
		}
	}
	
	public function logout()
	{
		$this->session->unset_userdata('admin_id');
		redirect($this->params['base']);
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