<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Anonses extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
				
		$this->params['main_navi'] = 9;		
		
		$this->include_js('jquery/ajaxupload.js');
		$this->include_js('admin/pages/news.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('admin/pages/news.css');
		
		$this->params['table_name'] = 'sp_anonses';
	}
	
	public function index()
	{
		$this->set_title($this->params['lang']['anonses']);
		$this->include_keywords($this->params['lang']['anonses']);
		$this->set_description($this->params['lang']['anonses']);				
		$this->include_view('news_view',$this->params);
	}
	
	public function get_items()
	{
		parent::get_items(
			false, 	// table name (false = default controller table)
			array(
				'sp_anonses' => array('id', 'thumb', 'name','link')
			)
		);
	}		
	
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
	
}

/* End of file anonses.php */
/* Location: ./application/controllers/anonses.php */