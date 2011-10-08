<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/crank.php');

class Login extends Crank {

	public function __construct()
	{
		parent::__construct();	
		$this->load->model("User_model");
		$this->params['main_navi']=0;
		
	}
	public function index()
	{
		if (!empty($this->params['user_id'])) redirect($this->params['base']);				
		
		$this->set_title($this->params['lang']['login']);
		$this->include_keywords($this->params['lang']['login']);
		$this->set_description($this->params['lang']['login']);		
		$this->include_js('pages/login.js');
		$this->include_view('login_view',$this->params);
	}
	
	public function logout()
	{
		$this->session->unset_userdata('user_id');
		redirect($this->params['base']);
	}
	
	public function check_user()
	{
		$data = array(
			'result' => true,
			'message' => ''
		);
		
		$user = $this->User_model->get_user_by_data(array('email'=>$this->input->post('email'), 'password'=>md5($this->input->post('password'))), true);
		
		if ($user) 
		{
			if ($user['confirmed'])			
				$this->session->set_userdata(array('user_id' => $user['id']));
			else
			{
				$data['result'] = false;
				$data['message'] = $this->params['lang']['no_confirmed'];
			}
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

/* End of file login.php */
/* Location: ./application/controllers/login.php */