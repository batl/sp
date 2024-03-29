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
					'basket' => 0,
					'on_page' => $this->params['page']['id'],
					'date_start <=' => date("Y-m-d"),
					'date_end >=' => date("Y-m-d")
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
			
			if ($this->params['page']['system']):
				
				$this->params['news'] = $this->Crank_model->get_all_entries(
					"sp_news", 
					array(),
					5,	
					false,
					'id',
					'desc'
				);
				
				$slug = $this->params['page']['slug'];
				
				switch ($slug)
				{
					case 'shop':
												
						$this->params['goods_categories'] = $this->Crank_model->get_all_entries(
							"sp_goods_categories"
						);
						
						$this->params['services_categories'] = $this->Crank_model->get_all_entries(
							"sp_services_categories"
						);
						$this->include_js('jquery/cycle.js');
						$this->include_js('pages/goods.js');
						$this->include_js('jquery/lightbox.js');
						$this->include_css('lightbox.css');				
						
						break;
					case 'organization':
						$this->include_js('jquery/cycle.js');												
						$this->include_js('pages/organizations.js');						
						$this->include_css('pages/organizations.css');
						
						break;
					case 'ideas':
						$this->params['all_categories'] = $this->Crank_model->get_all_entries(
							"sp_ideas_categories"
						);												
						$this->include_js('pages/ideas.js');	
						$this->include_js('jquery/cycle.js');
						$this->include_css('pages/ideas.css');
						
						break;
					case 'education':
																		
						$this->include_js('pages/education.js');						
						$this->include_css('pages/education.css');
						$this->include_js('jquery/cycle.js');
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
					case 'events':
					case 'projects':												
						
						$this->params['categories'] = $this->Crank_model->get_all_entries(
							"sp_".$slug."_categories"
						);
						
						$this->lang->load('calendar', $this->params['language']);		
						
						$prefs = array (
						   'show_next_prev'  => TRUE,
						   'next_prev_url'   => $this->params['base'].'page/get_calendar/'.$slug.'/',
						   'lang'			 => $this->lang->language
						 );
						 
						$this->load->library('calendar',$prefs);
						
						$links = array();
						
						for ($i = 1; $i <= 31; $i++)
						{
							$projects = count($this->Crank_model->get_all_entries(
								"sp_".$slug, 
								array(
									'date_start' => date("Y").'-'.date("m").'-'.$i,
									'in_process' => 0,
									'active'	 => 1,
									'basket'	 => 0
								), 
								0, 
								false, 
								'id', 
								'asc', 
								array(
									'sp_'.$slug => array('id')								
								)
							));
							
							if ($projects) $links[$i] = $slug.'/'.date("Y").'/'.date("m").'/'.$i;							
						}
						
						$this->params['calendar'] = $this->calendar->generate(date("Y"),date("m"), $links);

						$this->include_js('jquery/ui/jquery.ui.core.js');
						$this->include_js('jquery/ui/jquery.ui.widget.js');
						$this->include_js('jquery/ui/jquery.ui.mouse.js');		
						$this->include_js('jquery/ui/jquery.ui.position.js');		
						$this->include_js('jquery/ui/jquery.ui.draggable.js');		
						$this->include_js('jquery/ui/jquery.ui.dialog.js');			
						$this->include_js('jquery/ui/jquery.ui.datepicker.js');
						$this->include_js('jquery/cycle.js');
						$this->include_js('http://userapi.com/js/api/openapi.js?45', true);
						$this->include_css('ui/jquery.ui.all.css');		
						$this->include_css('pages/'.$slug.'.css');															
						$this->include_js('pages/'.$slug.'.js');
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
		   'next_prev_url'   => $this->params['base'].'page/get_calendar/'.$data[0].'/',
		   'lang'			 => $this->lang->language
		 );
		 
		$this->load->library('calendar',$prefs);
		
		$links = array();
		
		for ($i = 1; $i <= 31; $i++)
		{
			$projects = count($this->Crank_model->get_all_entries(
				"sp_".$data[0], 
				array(
					'date_start' => $data[1].'-'.$data[2].'-'.$i,
					'in_process' => 0,
					'active'	 => 1,
					'basket'	 => 0
				), 
				0, 
				false, 
				'id', 
				'asc', 
				array(
					'sp_'.$data[0] => array('id')								
				)
			));
			
			if ($projects) $links[$i] = $data[0].'/'.$data[1].'/'.$data[2].'/'.$i;
		}
	
		echo json_encode(array('responce' => $this->calendar->generate($data[1], $data[2], $links)));
	}
	
	/* ---------------------------------------------------------------------- */
	
	public function get_items($entry, $custom_view = false, $fields = array(), $joins = array(), $where = array(), $single = false, $types = array(), $disabled_actions = array(), $or_where = array(), $custom_where = false, $custom_data = array())
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
					$where = array('basket' => 0);
					(!empty($entry[1])) ? $single = true : $single = false;
					(!empty($entry[1])) ? $where['id'] = intval($entry[1]):'';
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
					$where = array('basket' => 0);
					(!empty($entry[1])) ? $single = true : $single = false;
					(!empty($entry[1])) ? $where['id'] = intval($entry[1]):'';
				break;
			case  'news':
					if (!empty($entry[3])):
						$custom_view = false;
						$fields = array(
							'sp_news' => array('id','name','date')
						); 		// get fields		
						$types = array(
							'date' => 'date'
						);
					else:
						$fields = array(
							'sp_news' => array('id','name','date','short_description', 'description')
						); 		// get fields		
						!empty($entry[1]) ? $custom_view = 'blog_news_single' : $custom_view = 'blog_news';					
					endif;
										
					$table_name = "sp_news";
					$where = array('basket' => 0);
					(!empty($entry[2])) ? $project_id = $entry[2] : $project_id = 0;
					(!empty($entry[1])) ? $single = true : $single = false;
					(!empty($entry[1])) ? $where['id'] = intval($entry[1]): $where['project_id'] = $project_id;
				break;
			case  'anonses':
					!empty($entry[1]) ? $custom_view = 'blog_anonses_single' : $custom_view = 'blog_anonses';					
					$fields = array(
						'sp_anonses' => array('id', 'thumb', 'name','link', 'description')
					); 		// get fields
					$table_name = "sp_anonses";
					$where = array('basket' => 0);
					(!empty($entry[1])) ? $single = true : $single = false;
					(!empty($entry[1])) ? $where['id'] = intval($entry[1]):'';
				break;
			case 'poll':
					$table_name = "sp_poll";
					$fields = array(
						'sp_poll' => array('id','name','date_start','date_end', 'active')
					);
					$types = array('date_start' => 'date', 'date_end' => 'date', 'active' => 'bool');
					$where = array('project_id' => $entry[1], 'basket' => 0);
				break;
			case 'pollanswers':
					$table_name = "sp_poll_answers";
					$fields = array(
						'sp_poll_answers' => array('id','name','thumb','count as answers_count')
					);
					$where = array('poll_id' => $entry[1]);
				break;
			case 'event':
			case 'events':
				
				!empty($entry[3]) ? $day = $entry[3] : $day = NULL;
				
				$custom_view = 'profile_events_view';
				
				$fields = array(
					'sp_events' => array('id','user_id','logo','name','date_start', 'date_end','tags','in_process','event_id'),
					'sp_places' => array('name as place'),
					'sp_events_categories' => array('name as group_name')
				);
				$custom_where = '';
				$custom_data['events'] = $this->Crank_model->get_all_entries("sp_events");
				
				if (!empty($entry[1]))
				{
					switch ($entry[1])
					{
						case 'date_filter':
							
							$dates = explode('v', $entry[2]); 
						
							if (!empty($dates[0]) && !empty($dates[1]))
							{
								$custom_where = "((date_start<='".date("Y-m-d", strtotime($dates[1]))."' AND (date_end='0000-00-00' OR date_end IS NULL)) OR (((date_start<='".date("Y-m-d", strtotime($dates[1]))."' OR (date_end>='".date("Y-m-d", strtotime($dates[0]))."' AND date_end<='".date("Y-m-d", strtotime($dates[1]))."')) AND date_end!='0000-00-00' AND date_end IS NOT NULL)) AND in_process=0 AND active=1 AND basket=0)";
							}
							elseif (!empty($dates[0]))
							{							
								$custom_where = "(date_start>='".date("Y-m-d", strtotime($dates[0]))."' AND in_process=0 AND active=1 AND basket=0)";
							}
							elseif (!empty($dates[1]))
							{															
								$custom_where = "(date_end<='".date("Y-m-d", strtotime($dates[1]))."' OR date_end='0000-00-00' OR date_end IS NULL AND in_process=0 AND active=1 AND basket=0)";
							}							
							
							$day = NULL;
							
							break;
					}					
				}
				else
				{
					if (!empty($entry[2]))
					{
						
						$fields = array(
							'sp_events' => array('id','user_id','logo','name','date_start', 'date_end','tags','in_process', 'schedule', 'price','description','event_id'),
							'sp_places' => array('name as place'),
							'sp_events_categories' => array('name as group_name')
						);
						
						$custom_view = 'events_single_view';
						
						$single = true;
						
						$where = array('id' => $entry[2], 'active' => 1, 'basket' => 0);
					}
				};
				
				 
				$joins = array(
					'sp_places'=>'place', 
					'sp_events_categories' => 'type'
				);
				if (!empty($day))
				{					
					switch ($day)
					{
						case 'no': // В определенный месяц "Октябрь"
							
							$custom_where = "((date_start>='".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01'))."' AND date_start<'".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01 +1 month'))."' AND in_process=0 AND active=1 AND basket=0 AND (date_end='0000-00-00' OR date_end IS NULL)) OR ((date_start>='".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01'))."' AND date_start<'".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01 +1 month'))."' AND in_process=0 AND active=1 AND basket=0)) OR (date_end>='".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01'))."' AND date_end<'".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01 +1 month'))."' AND in_process=0 AND active=1 AND basket=0))";
							
							break;
							
						case 'next': // Текущие							
							
							$custom_where = "((date_start<='".date("Y-m-d")."' AND date_end>='".date("Y-m-d")."' AND in_process=0 AND active=1 AND basket=0) OR (date_start<='".date("Y-m-d")."' AND (date_end IS NULL OR date_end='0000-00-00') AND in_process=0 AND active=1 AND basket=0))";														
							
							break;
							
						case 'prev': // Прошедшие

							$custom_where = "(date_end<'".date("Y-m-d")."' AND in_process=0  AND active=1 AND basket=0 AND date_end!='0000-00-00' AND date_end IS NOT NULL)";
							
							break;
						
						case 'future': // Будущие

							$custom_where = "(date_start>'".date("Y-m-d")."' AND in_process=0 AND active=1 AND basket=0)";
							
							break;
							
						case 'in_process': // Помечен как "В процессе"
							$where = array(
								'in_process' => 1,
								'active'	 => 1,
								'basket'	 => 0
							);
							
							break;
						
						default: // Попадает в определенный день
						
							$custom_where = "(date_start<='".$entry[1].'-'.$entry[2].'-'.$day."' AND (date_end>='".$entry[1].'-'.$entry[2].'-'.$day."' OR date_end='0000-00-00' OR date_end IS NULL)  AND in_process=0  AND active=1 AND basket=0)";
														
							break;
					}						
				}
				
				if ($entry[0] == 'event') $where['user_id'] = $this->session->userdata('user_id'); else if ($custom_where == '') {$where['basket'] = 0; $where['active'] = 1;}
				
				$table_name = "sp_events";				
				
				break;
			case 'projects':											
			case 'project':
			
				!empty($entry[3]) ? $day = $entry[3] : $day = NULL;
				
				if (!empty($entry[1]))
				{
					switch ($entry[1])
					{
						case 'date_filter':
							
							$dates = explode('v', $entry[2]); 
						
							if (!empty($dates[0]) && !empty($dates[1]))
							{
								$custom_where = "((date_start<='".date("Y-m-d", strtotime($dates[1]))."' AND (date_end='0000-00-00' OR date_end IS NULL) AND in_process=0 AND active=1 AND basket=0) OR (((date_start<='".date("Y-m-d", strtotime($dates[1]))."' OR (date_end>='".date("Y-m-d", strtotime($dates[0]))."' AND date_end<='".date("Y-m-d", strtotime($dates[1]))."')) AND date_end!='0000-00-00' AND date_end IS NOT NULL)) AND in_process=0 AND active=1 AND basket=0)";
							}
							elseif (!empty($dates[0]))
							{							
								$custom_where = "(date_start>='".date("Y-m-d", strtotime($dates[0]))."' AND in_process=0 AND active=1 AND basket=0)";
							}
							elseif (!empty($dates[1]))
							{															
								$custom_where = "((date_end<='".date("Y-m-d", strtotime($dates[1]))."' OR date_end='0000-00-00' OR date_end IS NULL) AND in_process=0 AND active=1 AND basket=0)";
							}							
							
							$day = NULL;
							
							break;
					}					
				}
				else
				{
					$where = array(						
						'active'	 => 1,
						'basket'	 => 0
					);
				}
				
				$custom_view = 'profile_projects_view';
				
				$fields = array(
					'sp_projects' => array('id','user_id','logo','name','date_start', 'date_end','short_description','slug','tags','in_process','bg_color', 'post_date', 'category_id', 'place as places', 'boss', 'category_id', 'initiator', 'organizer', 'project_id')
				); 
				$custom_data = array(
					'all_places' => $this->Crank_model->get_all_entries('sp_places'),
					'all_categories' => $this->Crank_model->get_all_entries('sp_projects_categories'),
					'organizations' => $this->Crank_model->get_all_entries('sp_organizations', array('basket' => 0)),
					'projects' => $this->Crank_model->get_all_entries('sp_projects', array('basket' => 0, 'active' => 1)),
					'comments' => $this->Crank_model->get_all_entries('sp_projects_comments', array('visible' => 1))
				);				
				if (!empty($day))
				{
					switch ($day)
					{
						case 'no': // В определенный месяц "Октябрь"
							
							$custom_where = "((date_start>='".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01'))."' AND date_start<'".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01 +1 month'))."' AND in_process=0 AND (date_end='0000-00-00' OR date_end IS NULL)  AND in_process=0 AND active=1 AND basket=0) OR ((date_start>='".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01'))."' AND date_start<'".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01 +1 month'))."' AND in_process=0 AND active=1 AND basket=0)) OR (date_end>='".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01'))."' AND date_end<'".date("Y-m-d", strtotime($entry[1].'-'.$entry[2].'-01 +1 month'))."' AND in_process=0 AND active=1 AND basket=0))";
							
							break;
							
						case 'next': // Текущие							
							
							$custom_where = "((date_start<='".date("Y-m-d")."' AND date_end>='".date("Y-m-d")."' AND in_process=0 AND active=1 AND basket=0) OR (date_start<='".date("Y-m-d")."' AND (date_end IS NULL OR date_end='0000-00-00') AND in_process=0 AND active=1 AND basket=0))";														
							
							break;
							
						case 'prev': // Прошедшие

							$custom_where = "(date_end<'".date("Y-m-d")."' AND in_process=0 AND date_end!='0000-00-00' AND date_end IS NOT NULL AND active=1 AND basket=0)";
							
							break;
						
						case 'future': // Будущие

							$custom_where = "(date_start>'".date("Y-m-d")."' AND in_process=0 AND active=1 AND basket=0)";
							
							break;
							
						case 'in_process': // Помечен как "В процессе"
							$where = array(
								'in_process' => 1,
								'active'	 => 1,
								'basket'	 => 0
							);
							
							break;
							
						default: // Попадает в определенный день
						
							$custom_where = "(date_start<='".$entry[1].'-'.$entry[2].'-'.$day."' AND (date_end>='".$entry[1].'-'.$entry[2].'-'.$day."' OR date_end='0000-00-00' OR date_end IS NULL)  AND active=1 AND basket=0 AND in_process=0)";
														
							break;
					}						
				}
				
				if ($entry[0] == 'project') $where['user_id'] = $this->session->userdata('user_id');									
				
				$table_name = "sp_projects";
				
				break;
				
			/*case 'moreproject':
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
				break;*/
			case 'organization':
				$fields = array(
					'sp_organizations' => array('id','name','logo','phone','email','sites', 'description', 'grantor', 'investor', 'individual', 'developer', 'sponsor', 'creative'),
					'sp_places' => array('name as place'),
					'sp_scopes' => array('name as scope'),
					'sp_activities' => array('name as activity')
				);
				$joins = array(
					'sp_places'=> 'place',
					'sp_scopes' => 'scope',
					'sp_activities' => 'activities'
				);	
				$single = false;
				$custom_view = 'organizations_view';
				if (!empty($entry[1]))
				{
					switch ($entry[1])
					{
						case 'type':
							$where = array(
								$entry[2] => 1
							);
							break;
						default:
							$where = array(
								'id' => $entry[1]
							);
							$single = true;
							$custom_view = 'organizations_single_view';
							break;
					}
				}				
				$where['basket'] = 0;
				$table_name = "sp_organizations";
				
				break;
			case 'ideas':
				$fields = array(
					'sp_ideas' => array('id','name','description','author', 'category_ids'),					
					'sp_scopes' => array('name as scope')
				);
				$joins = array(					
					'sp_scopes' => 'scope'					
				);	
				$single = false;
				$custom_view = 'ideas_view';
				if (!empty($entry[1]))
				{					
					$where = array(
						'id' => $entry[1]
					);
					$single = true;
					$custom_view = 'idea_single_view';							
				};				
				$custom_data = array(					
					'all_categories' => $this->Crank_model->get_all_entries('sp_ideas_categories')					
				);				
				$where['basket'] = 0;
				$where['visible'] = 1;
				$table_name = "sp_ideas";
				
				break;
			case 'education':
				
				$fields = array(
					'sp_methods' => array('id','name','author','description','links'),
					'sp_scopes' => array('name as scope')
				);
				$joins = array(					
					'sp_scopes' => 'scope'
				);
				$table_name = "sp_methods";
				$custom_view = 'methodics_view';
				
				$single = false;				
				
				if (!empty($entry[1]))
				{
					switch ($entry[1])
					{
						case 'type':
							switch ($entry[2])
							{								
								case 'couches':
									$fields = array(
										'sp_organizations' => array('id','name','logo','phone','email','sites', 'description', 'grantor', 'investor', 'individual', 'developer', 'sponsor', 'creative'),
										'sp_places' => array('name as place'),
										'sp_scopes' => array('name as scope'),
										'sp_activities' => array('name as activity')
									);
									$joins = array(
										'sp_places'=> 'place',
										'sp_scopes' => 'scope',
										'sp_activities' => 'activities'
									);	
									$table_name = "sp_organizations";
									$custom_view = 'organizations_view';
									$where = array(
										'couche' => 1,
										'basket' => 0
									);
									break;
							}							
							break;
						default:
							switch ($entry[1])
							{
								case 'methodics':									
									$custom_view = 'methodics_single_view';
									$where = array(
										'id' => $entry[2]
									);
									break;
								case 'couches':	
									$fields = array(
										'sp_organizations' => array('id','name','logo','phone','email','sites', 'description', 'grantor', 'investor', 'individual', 'developer', 'sponsor', 'creative'),
										'sp_places' => array('name as place'),
										'sp_scopes' => array('name as scope'),
										'sp_activities' => array('name as activity')
									);
									$joins = array(
										'sp_places'=> 'place',
										'sp_scopes' => 'scope',
										'sp_activities' => 'activities'
									);	
									$table_name = "sp_organizations";
									$custom_view = 'organizations_single_view';
									$where = array(
										'id' => $entry[2],
										'basket' => 0
									);
									break;
							}							
							$single = true;							
							break;
					}
				}												
				
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
		
		parent::get_items($table_name, $custom_view, $fields, $joins, $where, $single, $types, $disabled_actions, array(), $custom_where, $custom_data);
			
	}
	
	public function get_view($entry, $custom_view = false, $custom_data = array())
	{	
		
		switch ($entry[0])
		{
			case 'project':
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
				
				$table_name = 'sp_projects';
				$data 		= array('groups' => 'sp_projects_categories', 'places' => 'sp_places');
				$custom_view = 'admin/project';
				$custom_data = array('backgrounds' => $bg);
				break;
			case 'event':
				$table_name = 'sp_events';
				$data 		= array('groups' => 'sp_events_categories', 'places' => 'sp_places', 'projects' => 'sp_projects', 'events' => 'sp_events');
				$custom_view = 'admin/event';
				break;
			case 'moreproject':
				$table_name = 'sp_projectsstages';
				$data = array('territories' => 'sp_territories', 'projects' => 'sp_projects', 'events' => 'sp_events');
				$custom_data = array(
					'project_id' => $entry[1]
				);
				$custom_view = 'admin/moreproject';
				break;
			case 'news':
				$table_name = "sp_news";
				$data = array();
				$custom_data = array(
					'project_id' => $entry[2]
				);
				$custom_view = 'admin/news';
				break;			
			case 'poll':
				$table_name = "sp_poll";
				$data = array();
				$custom_data = array(
					'project_id' => $entry[1]
				);
				$custom_view = 'admin/poll';
				break;
			case 'pollanswers':
				$table_name = 'sp_poll_answers';
				$data = array();
				$custom_data = array(
					'poll_id' => $entry[1]
				);
				$custom_view = 'admin/pollanswers';
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
				$custom_view = 'admin/join';
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
			case 'event':
				$table_name = 'sp_events';
				break;
			case 'moreproject':
				$table_name = 'sp_projectsstages';
				break;
			case 'news':
				$table_name = 'sp_news';
				break;
			case 'poll':
				$table_name = 'sp_poll';
				break;
			case 'pollanswers':
				$table_name = 'sp_poll_answers';
				break;
			case 'user':
				$table_name = 'sp_users';
				break;
			case 'dictionary':
				$table_name = "sp_".$entry[1];
				break;
			case 'joins':
				$table_name = "sp_".implode('_',array($entry[1], $entry[2]));
				break;
			case 'comments':
				$table_name = "sp_projects_comments";
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