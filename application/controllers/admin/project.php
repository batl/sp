<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Project extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
				
		$this->params['main_navi'] = 2;		
				
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

		switch ($this->config->item('env_type'))
		{
			case 'dev':
				$this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxRUJ1hqatF4AoZmN6zEkqgOyqwRlxTq-Alw-c5cQL1BzkQ16NsKaqBY6w', true);
				break;
			case 'devmax':
				$this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxQ_XhwsaFE8QWbhjrQXcNpGHT4T3xQbEuuvb8nMFIwjCs15e_OMHD7eoA', true);
				break;
			default:
				$this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxT8FfoTSPNSCinLNsksAZkths46yxSraikQy6QrFI22T_VOWK_S7Eud3g', true);
				break;
		}
		
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
		
		$this->params['trash_projects'] = count($this->Crank_model->get_all_entries('sp_projects', array('basket' => 1)));
		$this->params['count_projects'] = count($this->Crank_model->get_all_entries('sp_projects', array('basket' => 0)));
		$this->params['trash_ideas'] = count($this->Crank_model->get_all_entries('sp_ideas', array('basket' => 1)));
		$this->params['count_ideas'] = count($this->Crank_model->get_all_entries('sp_ideas', array('basket' => 0)));
		
		$this->params['place_types'] = $this->Crank_model->get_all_entries('sp_places_categories');
		$this->params['scopes'] 	 = $this->Crank_model->get_all_entries('sp_scopes');
		$this->params['activities']  = $this->Crank_model->get_all_entries('sp_activities');
		$this->params['places'] 	= $this->Crank_model->get_all_entries('sp_places');
		
		$this->params['views']['group_modal_form'] = $this->load->view('admin/group_add_view', $this->params, true);
		$this->params['views']['place_modal_form'] = $this->load->view('admin/place_add_view', $this->params, true);								
		$this->params['views']['organization_modal_form'] = $this->load->view('admin/organizations_add_view', $this->params, true);
		
		$this->include_view('project_view',$this->params);
	}
	
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
			false,
			array(
				'sp_projects' => array('id','name','logo','date_start', 'date_end', 'user_id'),
				//'sp_projects_categories' => array('name as group_name'),
				'sp_users' => array('email as public_email')
			),
			array(
				'sp_users'=>'user_id'
				//'sp_projects_categories' => 'category_id'
			),
			array(
				'date_start' => 'date',
				'date_end' => 'date',
				'in_process' => 'bool',
				'id' => 'hidden',
				'user_id' => 'hidden',
				'group_name' => $this->Crank_model->get_all_entries('sp_projects_categories'),
				'public_email' => $this->Crank_model->get_all_entries('sp_users', array(), 0, false, 'id', 'asc', array('sp_users' => array('id', 'email as nick')))
			),
			array(
				'basket' 		=> $trash
			),
			$disabled_actions
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
			array('groups' => 'sp_projects_categories', 'places' => 'sp_places', 'organizations' => 'sp_organizations', 'projects' => 'sp_projects', 'events' => 'sp_events', 'territories' => 'sp_territories'),
			false,
			false,
			array('backgrounds' => $bg)
		);
	}
	
	public function check_slug()
	{
		$this->load->model("Project_model");
		
		$data = array(
			'result'   => false,
			'response' => $this->params['lang']['no_exists']
		);
		
		if ($this->Project_model->check_slug()) 
		{
			$data = array(
				'result'   => true,
				'response' => $this->params['lang']['exists']
			);
		}
		
		echo json_encode($data);
	}
	
	public function save_entry()
	{
		parent::save_entry();
	}
	
	public function remove_entry()
	{
		parent::remove_entry();
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

/* End of file project.php */
/* Location: ./application/controllers/project.php */