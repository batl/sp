<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Project extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
				
		$this->params['main_navi'] = 5;		
		
		$this->include_js('jquery/ajaxupload.js');
		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.dialog.js');		
		$this->include_js('jquery/ui/jquery.ui.position.js');
		$this->include_js('jquery/ui/jquery.ui.datepicker.js');
		$this->include_js('jquery/colorpicker/colorpicker.js');
		$this->include_js('jquery/colorpicker/eye.js');
		$this->include_js('jquery/colorpicker/layout.js');
		$this->include_js('jquery/colorpicker/utils.js');			
		$this->include_js('admin/pages/project.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('ui/jquery.ui.all.css');		
		$this->include_css('admin/pages/project.css');
		$this->include_css('colorpicker/colorpicker.css');
		$this->include_css('colorpicker/layout.css');
		
		$this->params['table_name'] = 'sp_projects';
	}
	
	public function index()
	{
		$this->set_title($this->params['lang']['projects']);
		$this->include_keywords($this->params['lang']['projects']);
		$this->set_description($this->params['lang']['projects']);		

		$this->params['place_types'] = $this->Crank_model->get_all_entries('sp_places_categories');
		$this->params['scopes'] 	 = $this->Crank_model->get_all_entries('sp_scopes');
			
		$this->include_view('project_view',$this->params);
	}
	
	public function get_items()
	{
		parent::get_items(
			false, 
			array(
				'sp_projects' => array('id','name','logo','date_start', 'date_end', 'in_process'),
				'sp_places' => array('name as place'),
				'sp_projects_categories' => array('name as group_name')
			), 
			array(
				'sp_places'=>'place', 
				'sp_projects_categories' => 'category_id'
			),
			array(
				'date_start' => 'date',
				'date_end' => 'date',
				'in_process' => 'bool',
				'id' => 'hidden'
			)
		);
	}		
	
	public function get_view()
	{		
		parent::get_view(array('groups' => 'sp_projects_categories', 'places' => 'sp_places'));
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

/* End of file project.php */
/* Location: ./application/controllers/project.php */