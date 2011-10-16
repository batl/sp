<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Service extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
				
		$this->params['main_navi'] = 4;		
		
		$this->include_js('jquery/ajaxupload.js');
		$this->include_js('admin/pages/goods.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('admin/pages/goods.css');
		
		$this->params['table_name'] = 'sp_services';
	}
	
	public function index()
	{

	}
	
	public function get_items()
	{
		parent::get_items(
			false, 	// table name (false = default controller table)
			array(
				'sp_services' => array('id','thumb','name','price','terms'),
				'sp_services_categories' => array('name as group_name'),
				'sp_organizations' => array('name as supplier_name'),
				'sp_projects' => array('name as project_name')
			), 		// get fields
			array(
				'sp_services_categories'=>'type', 
				'sp_organizations'=>'supplier', 
				'sp_projects'=>'project_result'
			),		// joins
			array(
				'price' => 'price'
			)		// fields types (bool, price)
		);
	}		
	
	public function get_view()
	{		
		parent::get_view(
			array(
				'groups' => 'sp_services_categories', 
				'organizations' => 'sp_organizations', 
				'projects' => 'sp_projects'
			)
		);
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

/* End of file service.php */
/* Location: ./application/controllers/service.php */