<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/crank.php');

class Page extends Crank {

	public function __construct()
	{
		parent::__construct();	
		$this->load->model("Page_model");		
	}
	
	function _remap($page, $entry = false)
	{			
		$entry ? $this->$page($entry) : $this->index($page);		
	}
	
	public function index($page)
	{							
		
		$this->params['page'] = $this->Page_model->get_page_by_data(array('slug' => $page));
		
		if (!empty($this->params['page']))
		{		
			$this->set_title($this->params['page']['name']);
			$this->include_keywords($this->params['page']['meta']);
			$this->set_description($this->params['page']['description']);
			
			$this->params['main_navi'] = 3 + $this->params['page']['id'];
			
			$this->params['poll'] = $this->Crank_model->get_all_entries(
				"sp_poll", 							
				array(
					'active' => 1,
					'on_page' => $this->params['page']['id'],
					'date_start <=' => date("Y-m-d"),
					'date_end >=' => date("Y-m-d")
 				),
				0,
				false,
				'id',
				'asc',
				array(),
				array(),
				true
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
			
			if ($this->params['page']['system']):
				
				switch ($this->params['page']['slug'])
				{
					case 'shop':
												
						$this->include_js('pages/goods.js');
						$this->include_js('jquery/lightbox.js');
						$this->include_css('lightbox.css');				
						
						break;
					case 'blog':
												
						$this->include_js('pages/news.js');				
						$this->include_js('jquery/lightbox.js');				
						$this->include_js('jquery/cycle.js');				
						$this->include_css('lightbox.css');				
						
						$this->params['anonses'] = $this->Crank_model->get_all_entries(
							"sp_anonses", 
							array(
								'in_slider' => 1
							)
						);												
						
						break;
					case 'projects':
						
						$this->params['projects_categories'] = $this->Crank_model->get_all_entries(
							"sp_projects_categories"
						);
						
						$this->lang->load('calendar', $this->params['language']);		
						
						$prefs = array (
						   'show_next_prev'  => TRUE,
						   'next_prev_url'   => $this->params['base'].'page/get_calendar/',
						   'lang'			 => $this->lang->language
						 );
						 
						$this->load->library('calendar',$prefs);
						
						for ($i = 1; $i <= 31; $i++)
						{
							$projects = count($this->Crank_model->get_all_entries(
								"sp_projects", 
								array(
									'date' => date("Y").'-'.date("m").'-'.$i
								), 
								0, 
								false, 
								'id', 
								'asc', 
								array(
									'sp_projects' => array('id')								
								)
							));
							
							if ($projects) $links[$i] = 'projects/'.date("Y").'/'.date("m").'/'.$i;							
						}
						
						$this->params['calendar'] = $this->calendar->generate(date("Y"),date("m"), $links);
												
						$this->include_css('pages/projects.css');															
						$this->include_js('pages/projects.js');
						$this->include_js('jquery/swfobject.js');
						
						break;
				}
				
				$this->include_view('page_'.$page.'_view',$this->params);
			else:				
				$this->include_view('page_view',$this->params);
			endif;			
		}
		else echo '404';
	}
	
	/* ---------------------------------------------------------------------- */
	
	public function get_calendar($data)
	{
		$this->lang->load('calendar', $this->params['language']);		
		
		$prefs = array (
		   'show_next_prev'  => TRUE,
		   'next_prev_url'   => $this->params['base'].'page/get_calendar/',
		   'lang'			 => $this->lang->language
		 );
		 
		$this->load->library('calendar',$prefs);
		
		$links = array();
		
		for ($i = 1; $i <= 31; $i++)
		{
			$projects = count($this->Crank_model->get_all_entries(
				"sp_projects", 
				array(
					'date' => $data[0].'-'.$data[1].'-'.$i
				), 
				0, 
				false, 
				'id', 
				'asc', 
				array(
					'sp_projects' => array('id')								
				)
			));
			
			if ($projects) $links[$i] = 'projects/'.$data[0].'/'.$data[1].'/'.$i;
		}
	
		echo json_encode(array('responce' => $this->calendar->generate($data[0], $data[1], $links)));
	}
	
	/* ---------------------------------------------------------------------- */
	
	public function get_items($entry, $custom_view = false, $fields = array(), $joins = array(), $where = array(), $single = false, $types = array(), $disabled_actions = array())
	{		
		$table_name = '';		
		switch ($entry[0])
		{
			case 'goods':
					!empty($entry[1]) ? $custom_view = 'shop_goods_single' : $custom_view = 'shop_goods';					
					$fields = array(
						'sp_goods' => array('id','foto', 'thumb','name','price'),
						'sp_goods_categories' => array('name as group_name'),
						'sp_organizations' => array('name as supplier_name'),
						'sp_projects' => array('name as project_name')
					);
					$joins = array(
						'sp_goods_categories'=>'type', 
						'sp_organizations'=>'supplier', 
						'sp_projects'=>'project_result'
					);
					$table_name = "sp_goods";
					(!empty($entry[1]) && empty($day)) ? $single = true : $single = false;
					(!empty($entry[1]) && empty($day)) ? $where = array('id' => intval($entry[1])):'';
				break;
			case  'services':
					!empty($entry[1]) ? $custom_view = 'shop_services_single' : $custom_view = 'shop_services';					
					$fields = array(
						'sp_services' => array('id','foto', 'thumb','name','price','terms'),
						'sp_services_categories' => array('name as group_name'),
						'sp_organizations' => array('name as supplier_name'),
						'sp_projects' => array('name as project_name')
					); 		// get fields
					$joins = array(
						'sp_services_categories'=>'type', 
						'sp_organizations'=>'supplier', 
						'sp_projects'=>'project_result'
					);	
					$table_name = "sp_services";
					(!empty($entry[1]) && empty($day)) ? $single = true : $single = false;
					(!empty($entry[1]) && empty($day)) ? $where = array('id' => intval($entry[1])):'';
				break;
			case  'news':
					!empty($entry[1]) ? $custom_view = 'blog_news_single' : $custom_view = 'blog_news';					
					$fields = array(
						'sp_news' => array('id','name','date','short_description', 'description')
					); 		// get fields		
					$table_name = "sp_news";
					(!empty($entry[1]) && empty($day)) ? $single = true : $single = false;
					(!empty($entry[1]) && empty($day)) ? $where = array('id' => intval($entry[1])):'';
				break;
			case  'anonses':
					!empty($entry[1]) ? $custom_view = 'blog_anonses_single' : $custom_view = 'blog_anonses';					
					$fields = array(
						'sp_anonses' => array('id', 'thumb', 'name','link', 'description')
					); 		// get fields
					$table_name = "sp_anonses";
					(!empty($entry[1]) && empty($day)) ? $single = true : $single = false;
					(!empty($entry[1]) && empty($day)) ? $where = array('id' => intval($entry[1])):'';
				break;
			case 'projects':											
			case 'project':
			
				!empty($entry[3]) ? $day = $entry[3] : $day = NULL;
				
				(!empty($entry[1]) && empty($day)) ? $custom_view = 'project_single' : $custom_view = 'profile_projects';
				
				$fields = array(
					'sp_projects' => array('id','user_id','thumb','name','date','short_description','slug','tags'),
					'sp_places' => array('name as place'),
					'sp_projects_categories' => array('name as group_name')
				); 
				$joins = array(
					'sp_places'=>'place', 
					'sp_projects_categories' => 'category_id'
				);
				if (!empty($day))
				{
					switch ($day)
					{
						case 'no':
							$where = array('date >=' => date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01')), 'date <=' => date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01 +1 month')));
							break;
						case 'next':
							$where = array('date >=' => date("Y-m-d"));
							break;
						case 'prev':
							$where = array('date <' => date("Y-m-d"));
							break;
						default:
							$where = array('date' => $entry[1].'-'.$entry[2].'-'.$day);
							break;
					}						
				}
				
				if ($entry[0] == 'project') $where['user_id'] = $this->session->userdata('user_id');									
				
				$table_name = "sp_projects";
				(!empty($entry[1]) && empty($day)) ? $single = true : $single = false;
				(!empty($entry[1]) && empty($day)) ? $where = array('id' => intval($entry[1])):'';
				break;
				
			case 'moreproject':
				$fields = array(
					'sp_projectsstages' => array('id','name'),
					'sp_territories' => array('name as territory')			
				);
				$joins = array(
					'sp_territories'=>'territory'
				);					
				$where = array(
					'projects_id'=> $entry[1]
				);
				$table_name = "sp_projectsstages";
				$single = false;
				break;
			case 'joins':
				$table_name = "sp_".implode('_',array($entry[1], $entry[2]));
		
				if (!empty($entry[5])) 
				{
					$fields = array(
						$table_name    => array('id', $entry[5]),
						'sp_'.$entry[3] => array('name')			
					); 
					
					$types = array('type' => 'enum');				
					$joins = array('sp_'.$entry[3] => $entry[3]."_id");			
				}
				else 
				{
					switch ($entry[3])
					{
						case 'photos':
							$fields = array(
								$table_name    => array('id','thumb as photo')
							);
							$types = array();
							$joins = array();
							break;
						case 'videos':
							$fields = array(
								$table_name    => array('id','url as video')
							);
							$types = array('video' => 'video');
							$joins = array();
							break;
						default:
							$fields = array(
								$table_name    => array('id'),
								'sp_'.$entry[3] => array('id', 'name')
							);
							$types = array();
							$joins = array('sp_'.$entry[3] => $entry[3]."_id");
							break;
					}					
				}
				$where = array('entry_id'=> $entry[4]);
				$disabled_actions = array('edit');
				break;
		}
		
		//(!empty($entry[1]) && empty($day)) ? $single = true : $single = false;
		//(!empty($entry[1]) && empty($day)) ? $where = array('id' => intval($entry[1])):'';
		
		parent::get_items($table_name, $custom_view, $fields, $joins, $where, $single, $types, $disabled_actions);
			
	}
	
	public function get_view($entry, $custom_view = false, $custom_data = array())
	{	
		
		switch ($entry[0])
		{
			case 'project':
				$table_name = 'sp_projects';
				$data 		= array('groups' => 'sp_projects_categories', 'places' => 'sp_places');
				break;
			case 'moreproject':
				$table_name = 'sp_projectsstages';
				$data = array('territories' => 'sp_territories', 'projects' => 'sp_projects', 'events' => 'sp_events');
				$custom_data = array(
					'project_id' => $entry[1]
				);
				break;
			case 'joins':

				empty($entry[5]) ? $type = false : $type = true;
		
				switch ($entry[3])
				{
					case 'photos':
						$data = array();
						break;
					case 'videos':
						$data = array();
						break;
					default:
						$data = array(				
							'join_entries' => "sp_".$entry[3]
						);
						break;
				}
				
				$table_name  = 'as_fields';
				$custom_view = 'join';
				$custom_data = array(
					'entry_id'   => $entry[4],
					'field_name' => $entry[3]."_id",
					'type'		 => $type
				);			    
				break;
		}
		parent::get_view( $data, $table_name, $entry[0], $custom_view, $custom_data);
	}
	
	public function save_entry($entry)
	{
		switch ($entry[0])
		{
			case 'project':
				$table_name = 'sp_projects';
				break;
			case 'moreproject':
				$table_name = 'sp_projectsstages';
				break;
			case 'user':
				$table_name = 'sp_users';
				break;
			case 'joins':
				$table_name = "sp_".implode('_',array($entry[1], $entry[2]));
				break;
		}
		parent::save_entry($table_name);
	}
	
	public function remove_entry($entry)
	{
		switch ($entry[0])
		{
			case 'project':
				$table_name = 'sp_projects';				
				break;
			case 'moreproject':
				$table_name = 'sp_projectsstages';
				break;
			case 'joins':
				$table_name = "sp_".implode('_',array($entry[1], $entry[2]));
				break;
		}
		parent::remove_entry($table_name);
	}
	
}

/* End of file page.php */
/* Location: ./application/controllers/page.php */