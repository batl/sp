<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/crank.php');

class Project extends Crank {

	public function __construct()
	{
		parent::__construct();	
		$this->load->model("Project_model");
		$this->params['main_navi']=2;				
	}
	
	public function _remap($slug, $page = false)
	{
		$page ? $this->page($page) : $this->index($slug);
	}
	
	public function index($slug)
	{				
		
		$this->params['project'] = $this->Crank_model->get_all_entries(
			"sp_projects", 
			array(
				'slug' => $slug
			),
			0,
			false,
			'id',
			'asc',
			array(
				'sp_projects' => array('id','user_id','thumb','name','date','short_description','slug','purpose','poster','banner','note', 'tags', 'bg_image', 'bg_color'),
				'sp_places' => array('name as place'),
				'sp_projects_categories' => array('name as group_name')
			),
			array(
				'sp_places'=>'place', 
				'sp_projects_categories' => 'category_id'
			),
			true
		);
		
		$this->session->set_userdata(array('project' => $this->params['project']['id']));				
		
		$this->include_js('jquery/lightbox.js');				
		$this->include_css('lightbox.css');				
		$this->include_css('pages/single_project.css');
		$this->include_js('pages/single_project.js');
		
		$this->set_title($this->params['project']['name']);
		$this->include_keywords($this->params['project']['tags']);
		$this->set_description($this->params['project']['short_description']);
		$this->include_project_view('project_single',$this->params);
	}
				
	public function page($view)
	{		
		
		switch ($view[0])
		{
			case 'about':
				
				$this->params['project'] = $this->Crank_model->get_all_entries(
					"sp_projects", 
					array(
						'id' => $this->session->userdata('project')
					),
					0,
					false,
					'id',
					'asc',
					array(
						'sp_projects' => array('id','user_id','thumb','name','date','short_description','slug','purpose','poster','banner','note', 'tags'),
						'sp_places' => array('name as place'),
						'sp_projects_categories' => array('name as group_name')
					),
					array(
						'sp_places'=>'place', 
						'sp_projects_categories' => 'category_id'
					),
					true
				);
				
				break;
			case 'links':
			case 'media':
			case 'steps':
			case 'partners':
				
				$this->params['project_more'] = $this->Crank_model->get_entry_by_data("sp_projectsstages", false, 'current', array('projects_id' => $this->session->userdata('project')));
		
				if (!empty($this->params['project_more'])):		
					foreach ($this->params['project_more'] as $key => $value):			
						
						$this->params['project_more'][$key]['photos'] = $this->Crank_model->get_entry_by_data(
							"sp_photos_report", 
							false, 
							'current', 
							array(
								'entry_id' => $value['id']
							)
						);
						
						$this->params['project_more'][$key]['videos'] = $this->Crank_model->get_entry_by_data(
							"sp_videos_report", 
							false, 
							'current', 
							array(
								'entry_id' => $value['id']
							)
						);
						
						$this->params['project_more'][$key]['partners'] = $this->Crank_model->get_all_entries(
							"sp_projectsstages_partners", 
							array(
								'entry_id' => $value['id']
							), 
							0, 
							false, 
							'id', 
							'asc', 
							array(
								'sp_projectsstages_partners' => array('type'),
								'sp_organizations' => array('name as partner_name')
							),
							array(
								'sp_organizations'=>'organizations_id'
							)
						);
						
					endforeach;
				endif;
				
				break;																		
		}

		$data = array(
			'response' => $this->load->view('project_'.$view[0], $this->params, true)
		);
		
		echo json_encode($data);
												
	}
}

/* End of file project.php */
/* Location: ./application/controllers/project.php */