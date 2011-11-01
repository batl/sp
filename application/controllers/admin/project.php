<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Project extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
				
		$this->params['main_navi'] = 5;		
				
		$this->include_js('jquery/ui/jquery.ui.core.js');		
		$this->include_js('jquery/ui/jquery.ui.widget.js');		
		$this->include_js('jquery/ui/jquery.ui.mouse.js');		
		$this->include_js('jquery/ui/jquery.ui.position.js');		
		$this->include_js('jquery/ui/jquery.ui.draggable.js');		
		$this->include_js('jquery/ui/jquery.ui.dialog.js');	
		$this->include_js('jquery/ui/jquery.ui.datepicker.js');
		$this->include_js('jquery/ajaxupload.js');		
		$this->include_js('jquery/colorpicker/colorpicker.js');
		$this->include_js('jquery/colorpicker/eye.js');
		$this->include_js('jquery/colorpicker/layout.js');
		$this->include_js('jquery/colorpicker/utils.js');			
		$this->include_js('admin/pages/project.js');
		$this->include_js('tiny_mce/tiny_mce.js');

		($this->config->item('env_type') == 'dev') ? $this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxRUJ1hqatF4AoZmN6zEkqgOyqwRlxTq-Alw-c5cQL1BzkQ16NsKaqBY6w', true) :  $this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxT8FfoTSPNSCinLNsksAZkths46yxSraikQy6QrFI22T_VOWK_S7Eud3g', true);
		
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
			
		$this->params['views']['group_modal_form'] = $this->load->view('admin/group_add_view', $this->params, true);
		$this->params['views']['place_modal_form'] = $this->load->view('admin/place_add_view', $this->params, true);								
		
		$this->include_view('project_view',$this->params);
	}
	
	public function get_items()
	{
		parent::get_items(
			false, 
			array(
				'sp_projects' => array('id','name','logo','date_start', 'date_end', 'user_id'),
				'sp_projects_categories' => array('name as group_name'),
				'sp_users' => array('email as public_email')
			), 
			array(
				'sp_users'=>'user_id', 
				'sp_projects_categories' => 'category_id'
			),
			array(
				'date_start' => 'date',
				'date_end' => 'date',
				'in_process' => 'bool',
				'id' => 'hidden',
				'user_id' => 'hidden',
				'group_name' => $this->Crank_model->get_all_entries('sp_projects_categories'),
				'public_email' => $this->Crank_model->get_all_entries('sp_users', array(), 0, false, 'id', 'asc', array('sp_users' => array('id', 'email as nick')))
			)
		);
	}		
	
	public function get_view()
	{		
		$bg = array();
		
		$background_directories = scandir('static/images/background');
		array_shift($background_directories);
		array_shift($background_directories);
				
		foreach ($background_directories as $directory)
		{
			$bg[$directory] = scandir('static/images/background/'.$directory);
			array_shift($bg[$directory]);
			array_shift($bg[$directory]);
		}
		
		parent::get_view(
			array('groups' => 'sp_projects_categories', 'places' => 'sp_places'),
			false,
			false,
			array('backgrounds' => $bg)
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

/* End of file project.php */
/* Location: ./application/controllers/project.php */