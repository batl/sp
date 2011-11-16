<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Moreproject extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
				
		$this->params['main_navi'] = 5;		
		
		$this->include_js('admin/pages/project.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('admin/pages/project.css');
		
		$this->params['table_name'] = 'sp_projects';
	}
	
	public function index()
	{					
		
	}	
	
	public function get_view($id)
	{		
		parent::get_view(array(), false, 'moreproject', array('project_id' => $id));
	}
	
	public function save_entry()
	{
		parent::save_entry();
	}
	
	public function remove_entry()
	{
		parent::remove_entry();
	}
}

/* End of file moreproject.php */
/* Location: ./application/controllers/moreproject.php */