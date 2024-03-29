<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Dictionary extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
						
		$this->params['main_navi'] = 9;			
				
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
		
		$this->params['grantors'] 		= $this->Crank_model->get_all_entries('sp_organizations', array('basket' => 0));
		$this->params['places'] 		= $this->Crank_model->get_all_entries('sp_places');
		$this->params['place_types'] 	= $this->Crank_model->get_all_entries('sp_places_categories');
		$this->params['scopes'] 	 	= $this->Crank_model->get_all_entries('sp_scopes');
		
		$this->params['trash_organizations'] = count($this->Crank_model->get_all_entries('sp_organizations', array('basket' => 1)));
		$this->params['count_organizations'] = count($this->params['grantors']);				
		$this->params['count_places'] = count($this->params['places']);				
		$this->params['count_place_types'] = count($this->params['place_types']);				
		$this->params['count_scopes'] = count($this->params['scopes']);				
		$this->params['count_territories'] = count($this->Crank_model->get_all_entries('sp_territories'));				
		$this->params['count_activities'] = count($this->Crank_model->get_all_entries('sp_activities'));				
		$this->params['count_methods'] = count($this->Crank_model->get_all_entries('sp_methods'));				
		$this->params['count_grants'] = count($this->Crank_model->get_all_entries('sp_grants'));				
		
		$this->params['views']['group_modal_form']  = $this->load->view('admin/group_add_view', $this->params, true);
		$this->params['views']['place_modal_form']  = $this->load->view('admin/place_add_view', $this->params, true);		
		
		$this->include_view('dictionary_view',$this->params);
	}
	
	public function get_items($table)
	{
		if ($table != 'undefined') $table = "sp_".$table; else $table = false;
		$data  = array();
		$joins = array();
		$where = array();
		$disabled_actions = array('recover');
		$fields_types = array('id' => 'hidden');
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
				$fields_types['group_name'] = $this->Crank_model->get_all_entries('sp_places_categories');
				break;
			case 'sp_methods':
				$data = array(
					'sp_methods' => array('id','name','author'),
					'sp_scopes' => array('name as scope')
				);
				$joins = array(
					'sp_scopes'=>'scope'
				);
				$fields_types['scope'] = $this->Crank_model->get_all_entries('sp_scopes');
				break;
			case 'sp_grants':
				$data = array(
					'sp_grants' => array('id','name','deadline'),
					'sp_scopes' => array('name as scope'),
					'sp_organizations' => array('name as grantor')
				);
				$joins = array(
					'sp_scopes'=>'scope',
					'sp_organizations'=>'grantor'
				);
				$fields_types['deadline'] = 'date';
				$fields_types['scope'] = $this->Crank_model->get_all_entries('sp_scopes');
				$fields_types['grantor'] = $this->Crank_model->get_all_entries('sp_organizations', array(), 0, false, 'id', 'asc', array('sp_organizations' => array('id', 'name')));
				break;
			case 'sp_organizations':
				$data = array(
					'sp_organizations' => array('id','thumb','name','address','boss')
				);				
				$where = array(
					'basket' => 0
				);
				break;
			case 'sp_organizations-trash':
				$table = 'sp_organizations';
				$data = array(
					'sp_organizations' => array('id','thumb','name','address','boss')
				);				
				$where = array(
					'basket' => 1
				);
				$disabled_actions = array('edit');
				break;
		}
		parent::get_items($table,$data,$joins, $fields_types, $where, $disabled_actions);
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
		if ($table != 'undefined') $table = "sp_".$table; else $table = false;
		parent::remove_entry($table);
	}
	
	public function trash_entry($table)
	{
		if ($table != 'undefined') $table = "sp_".$table; else $table = false;
		parent::trash_entry($table);
	}
	
	public function recover_entry($table)
	{
		if ($table == 'organizations-trash') $table = "sp_organizations"; else $table = false;
		parent::recover_entry($table);
	}
}

/* End of file dictionary.php */
/* Location: ./application/controllers/dictionary.php */