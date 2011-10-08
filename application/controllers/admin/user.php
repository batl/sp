<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class User extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base'].'login');				
				
		$this->params['main_navi'] = 2;	

		$this->include_js('jquery/ajaxupload.js');
		$this->include_js('admin/pages/user.js');		
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('admin/pages/user.css');
		
		$this->params['table_name'] = 'sp_users';
	}	
	
	public function index()
	{
		$this->set_title($this->params['lang']['users']);
		$this->include_keywords($this->params['lang']['users']);
		$this->set_description($this->params['lang']['users']);				
		$this->include_view('user_view',$this->params);
	}
	
	public function get_items()
	{
		parent::get_items(
			false, 	// table name (false = default controller table)
			array(
				'sp_users'  => array('id','thumb', 'name as your_name','suname','email','phone','confirmed'),
				'sp_groups' => array('name as group_name')
			), 		// get fields
			array(
				'sp_groups' => 'group_id'
			),		// joins
			array(
				'confirmed' => 'bool'
			)		// fields types (bool, price)
		);
	}		
	
	public function get_view()
	{		
		parent::get_view(array('groups' => 'sp_groups'));
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

/* End of file page.php */
/* Location: ./application/controllers/page.php */