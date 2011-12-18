<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Report extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
		
		$this->load->model("Report_model");				
		$this->params['main_navi'] = 12;		
	}	
	
	public function index()
	{	
		$this->set_title($this->params['lang']['reports']);
		$this->include_keywords($this->params['lang']['reports']);
		$this->set_description($this->params['lang']['reports']);				
					
		$this->include_view('report_view',$this->params);
	}
	 

	
}

/* End of file report.php */
/* Location: ./application/controllers/report.php */