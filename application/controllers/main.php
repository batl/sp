<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/crank.php');

class Main extends Crank {

	public function __construct()
	{
		parent::__construct();	
		$this->load->model("Main_model");
		$this->params['main_navi']=1;		
	}		
	
	public function index()
	{										
		$this->set_title($this->params['lang']['menu_home']);
		$this->set_description($this->params['lang']['menu_home']);
		$this->include_view('main_view',$this->params);
	}
	
	function set_language()
	{
		
		$this->session->set_userdata(array('lang' => $this->input->post('lang')));
		
	}
	
	function check_email()
	{
		$data = array(
			'result' => true
		);				
		
		$this->load->model('User_model');
		
		if ($this->User_model->get_user_by_data(array('email'=>$this->input->post('email')), true))
		{
			$data['result'] = false;
			$data['msg']    = $this->params['lang']['filed_signup'];
		}
		
		echo json_encode($data);
	}	
	
}

/* End of file main.php */
/* Location: ./application/controllers/main.php */