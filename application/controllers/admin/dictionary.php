<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Dictionary extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
						
		$this->params['main_navi'] = 8;			
				
		$this->include_js('jquery/ajaxupload.js');
		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.dialog.js');		
		$this->include_js('jquery/ui/jquery.ui.position.js');
		$this->include_js('jquery/ui/jquery.ui.datepicker.js');
		$this->include_js('admin/pages/dictionary.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('ui/jquery.ui.all.css');		
		$this->include_css('admin/pages/dictionary.css');
		
		$this->params['table_name'] = 'sp_places';
	}	
	
	public function index()
	{			
		$this->set_title($this->params['lang']['dictionary']);
		$this->include_keywords($this->params['lang']['dictionary']);
		$this->set_description($this->params['lang']['dictionary']);
				
		$this->params['grantors'] 		= $this->Crank_model->get_all_entries('sp_organizations');
		$this->params['places'] 		= $this->Crank_model->get_all_entries('sp_places');
		$this->params['place_types'] 	= $this->Crank_model->get_all_entries('sp_places_categories');
		$this->params['scopes'] 	 	= $this->Crank_model->get_all_entries('sp_scopes');
		
		$this->params['views']['group_modal_form']  = $this->load->view('admin/group_add_view', $this->params, true);
		$this->params['views']['place_modal_form']  = $this->load->view('admin/place_add_view', $this->params, true);		
		
		$this->include_view('dictionary_view',$this->params);
	}
	
	public function get_items($table)
	{
		if ($table != 'undefined') $table = "sp_".$table; else $table = false;
		$data  = array();
		$joins = array();
		switch ($table)
		{
			case false:
				$data = array(
					'sp_places' => array('id','name','address','phones'),
					'sp_places_categories' => array('name as group_name')
				);
				$joins = array(
					'sp_places_categories'=>'place_type'
				);
				break;
			case 'sp_methods':
				$data = array(
					'sp_methods' => array('id','name','author'),
					'sp_scopes' => array('name as group_name')
				);
				$joins = array(
					'sp_scopes'=>'scope'
				);
				break;
			case 'sp_grants':
				$data = array(
					'sp_grants' => array('id','name','deadline','grantor'),
					'sp_scopes' => array('name as group_name'),
					'sp_organizations' => array('name as grantor')
				);
				$joins = array(
					'sp_scopes'=>'scope',
					'sp_organizations'=>'grantor'
				);
				break;
			case 'sp_organizations':
				$data = array(
					'sp_organizations' => array('id','thumb','name','address','boss')
				);				
				break;
		}
		parent::get_items($table,$data,$joins, array('id' => 'hidden'));
	}		
	
	public function get_view($view)
	{
		if ($view != 'undefined') $table = "sp_".$view; else $table = false;
		$data = array();
		switch ($view)
		{
			case 'undefined':
				$data = array(
					'place_types' => 'sp_places_categories'					
				);
				$view = 'place';
				break;
			case 'methods':
				$data = array(
					'scopes' => 'sp_scopes'
				);
				break;
			case 'grants':
				$data = array(
					'scopes' 	=> 'sp_scopes',
					'grantors'  => 'sp_organizations'
				);
				break;
			case 'organizations':
				$data = array(
					'scopes' 	  => 'sp_scopes',
					'activities'  => 'sp_activities',
					'places'	  => 'sp_places'
				);
				break;
		}
		parent::get_view($data, $table, $view);
	}
	
	public function save_entry($table)
	{
		if ($table != 'undefined') $table = "sp_".$table; else $table = false;
		parent::save_entry($table);
	}
	
	public function remove_entry($table)
	{
		if ($table != 'undefined') $table = "sp_".$table."_categories"; else $table = false;
		parent::remove_entry($table);
	}
	
}

/* End of file dictionary.php */
/* Location: ./application/controllers/dictionary.php */