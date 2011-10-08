<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Moreproject extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base'].'login');				
				
		$this->params['main_navi'] = 5;		
		
		$this->include_js('admin/pages/project.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('admin/pages/project.css');
		
		$this->params['table_name'] = 'sp_projectsstages';
	}
	
	public function index()
	{					
		
	}
	
	public function get_items($id)
	{
		parent::get_items(
			false, 
			array(
				'sp_projectsstages' => array('id','name'),
				'sp_territories' => array('name as territory')			
			), 
			array(
				'sp_territories'=>'territory'
			),
			array(),
			array(
				'projects_id'=> $id
			)
		);
	}		
	
	public function get_view()
	{		
		parent::get_view(array('territories' => 'sp_territories', 'projects' => 'sp_projects', 'events' => 'sp_events'));
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