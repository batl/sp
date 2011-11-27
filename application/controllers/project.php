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
				'sp_projects' => array('id','user_id','logo','name','date_start','date_end','short_description','slug','purpose','banner','note', 'tags', 'bg_image', 'bg_color', 'map', 'map_description', 'contacts', 'facebook_link', 'twitter_link', 'vkontakte_link', 'apply_bg', 'bg_header_image', 'menu_font', 'title_color', 'purpose_color', 'banner_bg_color', 'place as places', 'category_id')
			),
			array(),
			true
		);				
		
		$this->params['project_photos'] = $this->Crank_model->get_all_entries(
			"sp_photos_report", 			
			array(
				'entry_id' => $this->params['project']['id']
			),
			0,
			6
		);
		
		$this->params['poll'] = $this->Crank_model->get_all_entries(
			"sp_poll", 							
			array(
				'active' 		=> 1,
				'project_id' 	=> $this->params['project']['id'],
				'date_start <=' => date("Y-m-d"),
				'date_end >=' 	=> date("Y-m-d"),
				'basket'		=> 0
			),		 // where
			0,		 // start
			false,	 // limit
			'id',	 // sort fields
			'asc',   // sort type
			array(), // fields
			array(), // joins	
			true,	 // single
			array(), // like
			false    // distinct
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
		$this->include_js('http://userapi.com/js/api/openapi.js?45', true);
		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.mouse.js');		
		$this->include_js('jquery/ui/jquery.ui.position.js');		
		$this->include_js('jquery/ui/jquery.ui.draggable.js');		
		$this->include_js('jquery/ui/jquery.ui.dialog.js');	
		$this->include_js('jquery/lightbox.js');				
		$this->include_css('ui/jquery.ui.all.css');
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
						'id' => $this->session->userdata('project'),
						'basket' => 0,
						'active' => 1
					),
					0,
					false,
					'id',
					'asc',
					array(
						'sp_projects' => array('id','user_id','thumb','name','date_start', 'date_end','short_description','slug','purpose','banner','note', 'tags', 'contacts', 'title_color', 'place as places', 'category_id')						
					),
					array(),
					true
				);
				
				break;
			case 'home':
			case 'links':
			case 'events':
			case 'photoreport':
			case 'videoreport':
			case 'products':
			case 'peoples':
			case 'feedbacks':
			case 'paper':
			case 'hidden_link':
			case 'partners':
				
				$this->params['project_more'] = $this->Crank_model->get_entry_by_data("sp_projects", false, 'current', array('id' => $this->session->userdata('project')));
		
				if (!empty($this->params['project_more'])):									
						
						$this->params['project_more']['photos'] = $this->Crank_model->get_entry_by_data(
							"sp_photos_report", 
							false, 
							'current', 
							array(
								'entry_id' => $this->session->userdata('project')
							)
						);
						
						$this->params['project_more']['videos'] = $this->Crank_model->get_entry_by_data(
							"sp_videos_report", 
							false, 
							'current', 
							array(
								'entry_id' => $this->session->userdata('project')
							)
						);
						
						$this->params['project_more']['partners'] = $this->Crank_model->get_all_entries(
							"sp_projects_partners", 
							array(
								'entry_id' => $this->session->userdata('project')
							), 
							0, 
							false, 
							'id', 
							'asc', 
							array(
								'sp_projects_partners' => array('type'),
								'sp_organizations' => array('name as partner_name')
							),
							array(
								'sp_organizations'=>'organizations_id'
							)
						);
											
				endif;
				
				if ($view[0] == 'products'):
					
					$this->params['project_products'] = $this->Crank_model->get_all_entries(
						"sp_goods", 
						array(
							'project_result' => $this->session->userdata('project')
						), 
						0, 
						false, 
						'id', 
						'asc', 
						array(							
							'sp_goods' => array('id','foto', 'thumb','name','price'),
							'sp_goods_categories' => array('name as group_name')
						),
						array(
							'sp_goods_categories'=>'type'
						)
					);										
					
					$this->params['project_services'] = $this->Crank_model->get_all_entries(
						"sp_services", 
						array(
							'project_result' => $this->session->userdata('project')
						), 
						0, 
						false, 
						'id', 
						'asc', 
						array(							
							'sp_services' => array('id','foto', 'thumb','name','price','terms'),
							'sp_services_categories' => array('name as group_name')
						),
						array(
							'sp_services_categories'=>'type'
						)
					);
					
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