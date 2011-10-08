<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Page extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base'].'login');				
						
		$this->params['main_navi'] = 3;			

		$this->include_js('admin/pages/page.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('admin/pages/page.css');
		
		$this->params['table_name'] = 'sp_pages';
	}	
	
	public function index()
	{			
		$this->set_title($this->params['lang']['pages']);
		$this->include_keywords($this->params['lang']['pages']);
		$this->set_description($this->params['lang']['pages']);				
		$this->include_view('page_view',$this->params);
	}
	
	// request for items html table view
	public function get_items()
	{
		parent::get_items(
			false,   // table name (false = default controller table)
			array(
				"sp_pages" => array('id','name','slug','in_footer','in_header')
			),       // get fields
			array(), // joins
			array(
				'in_footer' => 'bool',
				'in_header' => 'bool'
			)		// fields types (bool, price)
		);
	}		
	
	// request for add or edit view
	public function get_view()
	{
		parent::get_view();
	}
	
	public function save_entry()
	{
		parent::save_entry();
	}
	
	public function remove_entry()
	{
		parent::remove_entry();
	}
	
	public function check_system()
	{
		parent::check_system();
	}
}

/* End of file page.php */
/* Location: ./application/controllers/page.php */