<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/crank.php');

class Idea extends Crank {

	public function __construct()
	{
		parent::__construct();	
		$this->load->model("Idea_model");
		$this->params['main_navi']=3;		
	}
	
	public function index()
	{
		$this->set_title('Удачный проект');
		$this->include_keywords('Удачный проект');
		$this->set_description('Удачный проект');				
		$this->include_view('idea_view',$this->params);
	}
	
}

/* End of file idea.php */
/* Location: ./application/controllers/idea.php */