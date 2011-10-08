<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/crank.php');

class Signup extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (!empty($this->params['user_id'])) redirect($this->params['base']);				
		
		$this->load->model("User_model");
		$this->params['main_navi']=3;
		$this->lang->load('signup', $this->params['language']);
		$this->params['lang'] = $this->lang->language;
		$this->include_js('pages/signup.js');
	}
	
	public function _remap($verify_code)
	{
		$this->index($verify_code);
	}
	
	public function index($verify_code = false)
	{			
		if ($verify_code != 'index')
		{
			$user = $this->User_model->get_user_by_data(array('verify_code' => $verify_code), true);
			
			if (!empty($user))
			{								
				if ($this->User_model->entry_confirmed($user['id']))
				{					
					$this->session->set_userdata(array('user_id' => $user['id']));
					redirect($this->params['base'].'profile');
				}
			}
		}
		
		$this->set_title($this->params['lang']['signup']);
		$this->include_keywords($this->params['lang']['signup']);
		$this->set_description($this->params['lang']['signup']);				
		
		if ($_POST)
		{
			
			$user_id = $this->User_model->insert_entry();
			
			if ($user_id) 
			{	
				$this->params['msg'] = $this->params['lang']['success_signup'];
				$user = $this->User_model->get_user_by_data(array('id' => $user_id), true);
				$body = '<a href="'.$this->params['base'].'signup/'.$user['verify_code'].'" target="_blanck">Для подтверждения регистрации пройдите по этой ссылке.</a>';
				$this->send_mail($user['email'], 'successfull@support.com', 'Регистрация на сайте', $body);
			}
			
		}
		
		$this->include_view('signup_view',$this->params);
		
	}
	
}

/* End of file signup.php */
/* Location: ./application/controllers/signup.php */