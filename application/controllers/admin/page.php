<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Page extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);
						
		$this->params['main_navi'] = 3;			
				
		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.dialog.js');		
		$this->include_js('jquery/ui/jquery.ui.position.js');
		$this->include_js('jquery/ui/jquery.ui.sortable.js');
		$this->include_js('jquery/ui/jquery.ui.mouse.js');
		$this->include_js('jquery/ui/jquery.ui.draggable.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		
		$this->include_js('admin/pages/page.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('ui/jquery.ui.all.css');		
		$this->include_css('admin/pages/page.css');
		
		$this->params['table_name'] = 'sp_pages';
	}	
	
	public function index()
	{			
		$this->set_title($this->params['lang']['pages']);
		$this->include_keywords($this->params['lang']['pages']);
		$this->set_description($this->params['lang']['pages']);	

		$this->params['trash_pages'] = count($this->Crank_model->get_all_entries('sp_pages', array('basket' => 1)));
		$this->params['count_pages'] = count($this->Crank_model->get_all_entries('sp_pages', array('basket' => 0)));
			
		$this->include_view('page_view',$this->params);
	}
	
	// request for items html table view
	public function get_items($trash)
	{
		
		$disabled_actions = array('recover');
		
		if ($trash == 'trash')
		{
			$trash = 1;
			$disabled_actions = array('edit');
		}
		else $trash = 0;
	
		parent::get_items(
			false,   // table name (false = default controller table)
			array(
				"sp_pages" => array('id','name','slug','in_footer','in_header', 'weight')
			),       // get fields
			array(), // joins
			array(
				'in_footer' => 'bool',
				'in_header' => 'bool',
				'weight' => 'hidden',
				'id'=> 'hidden'
			),		// fields types (bool, price)
			array(
				'basket' 		=> $trash
			),
			$disabled_actions,
			true
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
	
	public function trash_entry()
	{
		parent::trash_entry();
	}
	
	public function recover_entry()
	{
		parent::recover_entry();
	}
}

/* End of file page.php */
/* Location: ./application/controllers/page.php */