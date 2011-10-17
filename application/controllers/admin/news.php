<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class News extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
				
		$this->params['main_navi'] = 9;		
		
		$this->include_js('jquery/ajaxupload.js');
		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.datepicker.js');
		$this->include_js('admin/pages/news.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('ui/jquery.ui.all.css');		
		$this->include_css('admin/pages/news.css');
		
		$this->params['table_name'] = 'sp_news';
	}
	
	public function index()
	{
		$this->set_title($this->params['lang']['news']);
		$this->include_keywords($this->params['lang']['news']);
		$this->set_description($this->params['lang']['news']);				
		$this->include_view('news_view',$this->params);
	}
	
	public function get_items($id = 0)
	{
		parent::get_items(
			false,  // table name (false = default controller table)
			array(
				'sp_news' => array('id','name','date')
			),// fields
			array(),	// joins		
			array('date' => 'date', 'id' => 'hidden'), //types
			array('project_id' => $id) // where
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
	
}

/* End of file news.php */
/* Location: ./application/controllers/news.php */