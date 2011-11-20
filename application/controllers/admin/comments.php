<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Comments extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);
				
		$this->params['table_name'] = 'sp_projects_comments';
	}
	
	public function index()
	{	
		
	}
	
	public function get_items($project_id)
	{
		$disabled_actions = array('recover');		
		
		parent::get_items(
			false,  // table name (false = default controller table)
			array(
				'sp_projects_comments' => array('id','author','date','body as comment', 'visible')
			),// fields
			array(),	// joins		
			array('date' => 'date', 'id' => 'hidden', 'visible' => 'bool'), //types
			array('project_id' => $project_id), // where
			$disabled_actions
		);
	}		
	
	public function get_view($id = 0)
	{		
		parent::get_view(array(), false, false, array('project_id' => $id));			
	}
	
	public function save_entry()
	{
		parent::save_entry();
	}
	
	public function remove_entry()
	{
		parent::remove_entry();
	}
	
	public function moderate_entry()
	{
		parent::moderate_entry();
	}
		
}

/* End of file goods.php */
/* Location: ./application/controllers/goods.php */