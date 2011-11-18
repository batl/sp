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
		$this->include_js('jquery/ui/jquery.ui.dialog.js');		
		$this->include_js('jquery/ui/jquery.ui.position.js');
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
		
		$this->params['place_types'] = $this->Crank_model->get_all_entries('sp_places_categories');
		$this->params['scopes'] 	 = $this->Crank_model->get_all_entries('sp_scopes');
		
		$this->params['views']['group_modal_form']  = $this->load->view('admin/group_add_view', $this->params, true);
		$this->params['views']['place_modal_form']  = $this->load->view('admin/place_add_view', $this->params, true);
		$this->params['views']['method_modal_form'] = $this->load->view('admin/methods_add_view', $this->params, true);
		
		$this->include_view('event_view',$this->params);
	}
	
	public function get_items($id = 0)
	{
		parent::get_items(
			false, 
			array(
				'sp_events' => array('id','name','logo','date_start', 'date_end'),				
				'sp_users'  => array('email as public_email')
			), 
			array('sp_places'=>'place', 'sp_users'=>'user_id'),			
			array(
				'date_start' 	 => 'date', 
				'date_end' 		 => 'date', 
				'id' 			 => 'hidden',				
				'place'			 => $this->Crank_model->get_all_entries('sp_places', array(), 0, false, 'id', 'asc', array('sp_places' => array('id', 'name'))),
				'public_email' 	 => $this->Crank_model->get_all_entries('sp_users', array(), 0, false, 'id', 'asc', array('sp_users' => array('id', 'email as nick')))
			),
			array('project_id' => $id) // where			
		);
	}		
	
	public function get_view($id = 0)
	{		
		parent::get_view(
			array(
				'events' => 'sp_events',
				'groups' => 'sp_events_categories', 
				'places' => 'sp_places',
				'projects' => 'sp_projects'
			),
			false,
			false,
			array('project_id' => $id) // where
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