<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Profile extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base'].'login');
				
		$this->params['main_navi'] = 7;		
		$this->lang->load('profile', $this->params['language']);
		$this->params['lang'] = $this->lang->language;
		$this->include_js('jquery/ajaxupload.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_js('admin/pages/profile.js');
		$this->params['table_name'] = 'sp_projects';
		$this->params['user'] = $this->Crank_model->get_entry_by_data("sp_users",true, 'all', array('id' => $this->session->userdata('admin_id')));		
	}
	
	public function index()
	{			
		$this->set_title($this->params['lang']['profile'].' '.$this->params['user']['name'][$this->params['language_id']].' '.$this->params['user']['suname'][$this->params['language_id']]);
		$this->include_keywords($this->params['lang']['profile'].' '.$this->params['user']['name'][$this->params['language_id']].' '.$this->params['user']['suname'][$this->params['language_id']]);
		$this->set_description($this->params['lang']['profile'].' '.$this->params['user']['name'][$this->params['language_id']].' '.$this->params['user']['suname'][$this->params['language_id']]);									
		
		$this->params['view'] = $this->load->view('admin/profile_main_view', $this->params, true);
		$this->include_view('profile_view',$this->params);
	}
	
	public function page()
	{
		$view = $this->input->post('page');
					
		$data = array(
			'response' => $this->load->view('admin/profile_'.$view, $this->params, true)
		);
		
		echo json_encode($data);
				
						
	}
	
	public function update()
	{
		$data = array(
			'result'  => true,
			'message' => $this->params['lang']['success_update']
		);
		
		$this->load->model('User_model');
		
		if ($this->User_model->update_user()) 
			echo json_encode($data);
		else
		{
			$data = array(
				'result'  => false,
				'message' => $this->params['lang']['failed_update']
			);
			echo json_encode($data);
		}
		
	}
	
}

/* End of file profile.php */
/* Location: ./application/controllers/profile.php */