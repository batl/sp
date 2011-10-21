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
				'sp_projects' => array('id','user_id','logo','name','date_start','date_end','short_description','slug','purpose','poster','banner','note', 'tags', 'bg_image', 'bg_color', 'map', 'map_description', 'contacts', 'facebook_link', 'twitter_link', 'vkontakte_link'),
				'sp_places' => array('name as place'),
				'sp_projects_categories' => array('name as group_name')
			),
			array(
				'sp_places'=>'place', 
				'sp_projects_categories' => 'category_id'
			),
			true
		);
		
		$this->params['poll'] = $this->Crank_model->get_all_entries(
			"sp_poll", 							
			array(
				'active' 		=> 1,
				'project_id' 	=> $this->params['project']['id'],
				'date_start <=' => date("Y-m-d"),
				'date_end >=' 	=> date("Y-m-d")
			),		 // where
			0,		 // start
			false,	 // limit
			'id',	 // sort fields
			'asc',   // sort type
			array(), // fields
			array(), // joins	
			true,	 // single
			array(), // like
			false,   // distinct
			array(
				'date_end IS NULL' => NULL,
				'date_end' => '0000-00-00'
			)	     // or_where
		);
		
		if (!empty($this->params['poll']))
		{
			$this->params['poll_answers'] = $this->Crank_model->get_all_entries(
				"sp_poll_answers", 							
				array(
					'poll_id' => $this->params['poll']['id']
				)
			);
		}
		
		$this->session->set_userdata(array('project' => $this->params['project']['id']));				
		
		($this->config->item('env_type') == 'dev') ? $this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxRUJ1hqatF4AoZmN6zEkqgOyqwRlxTq-Alw-c5cQL1BzkQ16NsKaqBY6w', true) :  $this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxT8FfoTSPNSCinLNsksAZkths46yxSraikQy6QrFI22T_VOWK_S7Eud3g', true);
		
		$this->include_js('jquery/lightbox.js');				
		$this->include_css('lightbox.css');				
		$this->include_css('pages/single_project.css');
		$this->include_js('pages/single_project.js');			
		
		$this->set_title($this->params['project']['name']);
		$this->include_keywords($this->params['project']['tags']);
		$this->set_description($this->params['project']['short_description']);
		$this->include_project_view('single_project/main',$this->params);
	}
				
	public function page($view)
	{		
		
		switch ($view[0])
		{
			case 'about':
			case 'contacts':			
				
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
						'sp_projects' => array('id','user_id','thumb','name','date_start', 'date_end','short_description','slug','purpose','poster','banner','note', 'tags', 'contacts'),
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
			case 'photoreport':
			case 'videoreport':
			case 'products':
			case 'peoples':
			case 'feedbacks':
			case 'paper':
			case 'hidden_link':
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
			'response' => $this->load->view('single_project/project_'.$view[0].'_view', $this->params, true)
		);
		
		echo json_encode($data);
												
	}
}

/* End of file project.php */
/* Location: ./application/controllers/project.php */