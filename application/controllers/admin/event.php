<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Event extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);
				
		$this->params['main_navi'] = 10;		
		
		$this->include_js('jquery/ajaxupload.js');
		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.datepicker.js');
		$this->include_js('admin/pages/event.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('ui/jquery.ui.all.css');		
		$this->include_css('admin/pages/event.css');
		
		$this->params['table_name'] = 'sp_events';
	}
	
	public function index()
	{
		$this->set_title($this->params['lang']['events']);
		$this->include_keywords($this->params['lang']['events']);
		$this->set_description($this->params['lang']['events']);				
		$this->include_view('event_view',$this->params);
	}
	
	public function get_items()
	{
		parent::get_items(
			false, 
			array(
				'sp_events' => array('id','name','logo','date_start', 'date_end'),
				'sp_places' => array('name as place')			
			), 
			array('sp_places'=>'place'),
			array('date_start' => 'date', 'date_end' => 'date')
		);
	}		
	
	public function get_view()
	{		
		parent::get_view(
			array(
				'groups' => 'sp_events_categories', 
				'places' => 'sp_places',
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

/* End of file event.php */
/* Location: ./application/controllers/event.php */