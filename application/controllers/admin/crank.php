<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Crank extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->params['front_url']=$this->config->config['base_url'];
		$this->params['base']=$this->config->config['base_url'].'admin/';
		$this->params['base_img']=$this->config->config['base_url'].'static/images/';
		$this->params['base_css']=$this->config->config['base_url'].'static/css/';
		$this->params['base_js']=$this->config->config['base_url'].'static/js/';
		$this->params['include_css'] = array();
		$this->params['include_js'] = array();
		$this->params['include_keywords'] = array();
		$this->params['admin_id']   = $this->session->userdata('admin_id');		
		
		$this->load->model("Crank_model");	
		
		/* set & load language */
			$this->params['language'] = $this->session->userdata('lang');		
			if (empty($this->params['language'])) $this->session->set_userdata(array('lang'=>'russian'));
			$this->params['language'] = $this->session->userdata('lang');
			$this->params['language_id'] = $this->Crank_model->get_language_id($this->params['language']);
			$this->session->set_userdata(array('lang_id'=>$this->params['language_id']));
			$this->lang->load('global', $this->params['language']);
			$this->params['lang'] = $this->lang->language;
			$this->params['languages'] = $this->Crank_model->get_languages();
		/* end language*/
		$this->params['current_settings'] = $this->Crank_model->get_entry_by_data("sp_settings", true, 'current', array('id'=>1));
		
		$this->include_js('jquery/jquery.min.js');
		$this->include_js('jquery/ui/jquery-ui-1.8.16.custom.js');
		$this->include_js('jquery/jquery.betterTooltip.js');
		$this->include_js('jquery/scroll_to.js');
		$this->include_js('admin/main.js');				
		$this->include_css('admin/main.css');
		$this->include_css('tooltips/style.css');
		
		if (!empty($this->params['admin_id']))
		{					
			$this->params['admin_info'] = $this->Crank_model->get_entry_by_data("sp_users", true, 'current', array('id' => $this->params['admin_id']));
		}
		
	}
	
	protected function include_view($viewname, $data= array())
	{
		$header = $this->load->view('admin/_header_view',$data);
		$body = $this->load->view('admin/'.$viewname,$data);
		$footer = $this->load->view('admin/_footer_view',$data);
		return $header.$body.$footer;
	}
	
	protected function include_css($string)
	{
		$count = count($this->params['include_css']);
		$this->params['include_css'][$count] = "<link rel='stylesheet' href='".$this->params['base_css'].$string."' type='text/css'/>";
		return true;
	}
	
	protected function include_js($string, $global = false)
	{ 
		$count = count($this->params['include_js']);
		(!$global) ? $this->params['include_js'][$count] = "<script type='text/javascript' src='".$this->params['base_js'].$string."'></script>" : $this->params['include_js'][$count] = "<script type='text/javascript' src='".$string."'></script>";
		return true;
	}
	
	protected function include_keywords($string)
	{ 
		$count = count($this->params['include_keywords']);
		if ($count==0)$this->params['include_keywords'][$count] = $string;
		else $this->params['include_keywords'][$count] = ', '.$string;
		return true;
	}
	
	protected function set_description($string)
	{ 
		$this->params['include_description'] = $string;
		return true;
	}
	
	protected function set_title($string)
	{ 
		$this->params['title_page'] = $this->params['lang']['admin'].' '.$this->params['current_settings']['site_name'].' - '.$string;
		return true;
	}
	
	protected function send_mail($to, $from, $subject, $message)
	{		
				
		// To send HTML mail, the Content-type header must be set
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";

		// Additional headers
		$headers .= 'From: '.$from. "\r\n";		

		// Mail it
		return mail($to, $subject, $message, $headers);
	}
	
	protected function html_table($array, $fields_types = array(), $lang_fields = array(), $disabled_actions = array(), $sortable)
	{
		$html = '';
		
		if (!empty($array))
		{
			$titles = array_keys($array[0]);
			
			$sort_field = $this->input->post('sort');						
			
			$sortable ? $html .= '<table class="gen_table" id="sortable" cellpadding="0" cellspacing="0">' : $html .= '<table class="gen_table" cellpadding="0" cellspacing="0">';						
			
			$html .= '<tr class="t_title">';	
				
			$html .= '<td style="cursor:default; color:#ccc; text-decoration:underline;">№</td>';						
			
			foreach ($titles as $title)
			{			
				$type_sort = $this->input->post('sort_type');
				
				$sort_direction = '';
				
				if ($sort_field == $title)
				{
					if ($type_sort == 'asc')
					{
						$type_sort = 'desc'; 
						$sort_direction ='&nbsp;&#8593;';
					}
					else
					{
						$type_sort = 'asc';
						$sort_direction = '&nbsp;&#8595;';
					}
				}
				else $type_sort = 'desc';					
				
				empty($this->params['lang'][$title]) ? $field_title = $title : $field_title = $this->params['lang'][$title];
				
				if (!empty($fields_types[$title])):
					
					switch ($fields_types[$title])
					{
						case 'hidden':
							$html .= '<td class="sorting hidden" sort="'.$type_sort.'"><span class="display_none">'.$title.'</span>'.$field_title.$sort_direction.'</td>';							
							break;
						default:
							$html .= '<td class="sorting" sort="'.$type_sort.'"><span class="display_none">'.$title.'</span>'.$field_title.$sort_direction.'</td>';							
							break;
					}
				
				else:
				
					$html .= '<td class="sorting" sort="'.$type_sort.'"><span class="display_none">'.$title.'</span>'.$field_title.$sort_direction.'</td>';							
					
				endif;
				
			}
			
			$start = $this->input->post('start');						
			
			$html .= '<td style="cursor:default; color:#ccc; text-decoration:underline;">'.$this->params['lang']['actions'].'</td>';

			$html .= '</tr>';						
			
			foreach ($array as $row_key => $row)
			{
			
				$confirmed = false;							
			
				$html .= '<tr>';								
				
				foreach ($row as $key => $cell)
				{
					
					if (preg_match('(gif|jpg|jpeg|png|tif)',$cell))
					{
						$html .= '<td><img class="img_100" src="'.$this->params['front_url'].$cell.'"/></td>';
					}
					else
					{
						if (!empty($fields_types[$key]))
						{
							switch ($fields_types[$key])
							{
								case 'bool':
									intval($cell)?$html .= '<td><input type="checkbox" checked="checked" disabled="disabled"/></td>':$html .= '<td><input type="checkbox" disabled="disabled"/></td>';
									if ($key == 'confirmed')
									{ 
										intval($cell) ? $confirmed = true : $confirmed = false;
									}
									break;
								case 'price':
									$html .= '<td>'.$cell.' грн.</td>';
									break;
								case 'date':									
									if (!empty($cell) && $cell != '0000-00-00')
									{
										$date = explode(" ",date("j M Y",strtotime($cell)));
										$html .= '<td>'.$date[0].' '.$this->params['lang']['month'][strtolower($date[1])].' '.$date[2].'</td>';
									}
									else
										$html .= '<td>'.$this->params['lang']['no_date'].'</td>';
									break;
								case 'enum':
									$html .= '<td>'.$this->params['lang'][$cell].'</td>';
									break;
								case 'video':
									$video = explode('/',$cell);
									if (!empty($video))
										$html .= '<td><iframe class="youtube-player" type="text/html" width="300" height="300" src="http://www.youtube.com/embed/'.$video[count($video)-1].'" frameborder="0"></iframe></td>';
									else
										$html .= '<td>'.$this->params['lang']['no_video'].'</td>';
									break;
								case 'hidden':
									if ($key == 'id') $html .= '<td class="hidden">'.$cell.'</td><td>'.($row_key + $start + 1).'</td>';	 else $html .= '<td class="hidden">'.$cell.'</td>';
									break;								
								default:
									$html .= '<td>'.$cell.'</td>';	
									break;
							}
						}
						else $html .= '<td>'.$cell.'</td>';						
					}
				}
				
				// Entry Actions 
				
				$html .= '<td class="actions">';
					if (!in_array('edit', $disabled_actions))
						$html .= '<a href="javascript:void(0);" class="edit_item" title="'.$this->params['lang']['edit_title'].'">'.$this->params['lang']['edit'].'</a>';
					if (!in_array('remove', $disabled_actions))
						$html .= '<a href="javascript:void(0);" class="remove_item" title="'.$this->params['lang']['remove_title'].'">'.$this->params['lang']['remove'].'</a>';
					if (!in_array('recover', $disabled_actions))
						$html .= '<a href="javascript:void(0);" class="recover_item" title="'.$this->params['lang']['recover_title'].'">'.$this->params['lang']['recover'].'</a>';
					else
					{
						switch ($this->params['table_name'])
						{
							case "sp_users":							
								(!$confirmed) ? $html .= '<a href="javascript:void(0);" class="confirm_user">'.$this->params['lang']['confirm_user'].'</a>': '';
								break;
							case "sp_projects":
								$html .= '<a href="javascript:void(0);" class="project_more"><img src="'.$this->params['lang']['stages_ico'].'" title="'.$this->params['lang']['more'].'"/></a>';
								$html .= '<a href="javascript:void(0);" class="projects_news"><img src="'.$this->params['lang']['news_ico'].'" title="'.$this->params['lang']['news'].'"/></a>';
								$html .= '<a href="javascript:void(0);" class="projects_anonses"><img src="'.$this->params['lang']['anons_ico'].'" title="'.$this->params['lang']['anonses'].'"/></a>';
								$html .= '<a href="javascript:void(0);" class="projects_events"><img src="'.$this->params['lang']['event_ico'].'" title="'.$this->params['lang']['event'].'"/></a>';
								$html .= '<a href="javascript:void(0);" class="projects_polls"><img src="'.$this->params['lang']['poll_ico'].'" title="'.$this->params['lang']['poll_title'].'"/></a>';
								$html .= '<a href="javascript:void(0);" id="projects-partners-organizations" class="stage_partners"><img src="'.$this->params['lang']['parthners_ico'].'" title="'.$this->params['lang']['partners'].'"/></a>';
								$html .= '<a href="javascript:void(0);" id="photos-report-photos" class="stage_action"><img src="'.$this->params['lang']['photos_ico'].'" title="'.$this->params['lang']['photos'].'"/></a>';
								$html .= '<a href="javascript:void(0);" id="videos-report-videos" class="stage_action"><img src="'.$this->params['lang']['videos_ico'].'" title="'.$this->params['lang']['videos'].'"/></a><br/><br/>';
								//$all_comments 	 = count($this->Crank_model->get_all_entries('sp_projects_comments', array('project_id' => $row['id'])));
								//$new_comments 	 = count($this->Crank_model->get_all_entries('sp_projects_comments', array('project_id' => $row['id'], 'visible' => 0)));
								//$html .= '<a href="javascript:void(0);" class="projects_comments">'.$this->params['lang']['comments'].' '.$all_comments.' (<span style="color:green;">'.$new_comments.'</span>)</a>';
								break;
							case "sp_events":
								$html .= '<a href="javascript:void(0);" id="events-organizes-organizations" class="event_action"><img src="'.$this->params['lang']['parthners_ico'].'" title="'.$this->params['lang']['organizations'].'"/></a>';
								$html .= '<a href="javascript:void(0);" id="events-curators-organizations" class="event_action">'.$this->params['lang']['curators'].'</a>';
								$html .= '<a href="javascript:void(0);" id="events-methods-methods" class="event_action">'.$this->params['lang']['methods'].'</a>';							
								break;						
							case "sp_poll":
								$html .= '<a href="javascript:void(0);" class="poll_answers">'.$this->params['lang']['poll_answers'].'</a>';							
								break;
							case "sp_projects_comments":
								$html .= '<a href="javascript:void(0);" class="moderate_item">'.$this->params['lang']['moderate'].'</a>';
								break;
							case "sp_ideas":
								$html .= '<a href="javascript:void(0);" class="moderate_item">'.$this->params['lang']['moderate'].'</a>';
								break;
						}
					}
					
				$html .= '</td>';
				
				$html .= '</tr>';
			}
			
			$html .= '</table>';
		}
		
		return $html;		
	}
	
	public function get_items($table_name = false, $fields = array(), $joins = array(), $fields_types = array(), $where = array(), $disabled_actions = array(), $sortable = false)
	{
		$data = array(
			'result' => true			
		);
		
		if (!$table_name) $table_name = $this->params['table_name'];
		
		$start 		= $this->input->post('start');
		$sort  		= $this->input->post('sort');
		$sort_type 	= $this->input->post('sort_type');
		$group 		= $this->input->post('group');
		$limit 		= $this->input->post('limit');
		$search_fields = $this->input->post('fields');
		$search_values = $this->input->post('values');
		$filter_fields = $this->input->post('filter_fields');
		$filter_values = $this->input->post('filter_values');
		
		$like = array();
		
		if (!empty($search_fields))
		{
			foreach ($search_fields as $key=>$search_field)
			{
				if (!empty($search_values[$key])) $like[$search_field] = $search_values[$key];
			}
		}				
		
		if (!empty($group))
		{
			switch ($table_name)
			{
				case 'sp_projects':
					$like['category_id'] = "\"".$group."\"";
					break;
				case 'sp_users':
					$where['group_id'] = $group;
					break;
				case 'sp_goods':
				case 'sp_services':
				case 'sp_events':
					$where['type'] = $group;
					break;
				default:
					$where['group'] = $group;
					break;
			}
		}
		
		if (!empty($filter_fields))
		{
			foreach ($filter_fields as $key => $filter)
			{					
				if ($filter_values[$key] != "all")
				{
					switch ($filter)
					{
						case 'group_name':
							switch ($table_name)
							{
								case 'sp_users':
									$filter = 'group_id'; 
									break;
								case 'sp_goods':
									$filter = 'type'; 
									break;
								case 'sp_projects':
									$filter = 'category_id'; 
									break;
								case 'sp_places':
									$filter = 'place_type'; 
									break;
							}							
							break;					
						case 'supplier_name':
							$filter = 'supplier'; 
							break;
						case 'project_name':
							$filter = 'project_result'; 
							break;
						case 'public_email':
							$filter = 'user_id'; 
							break;
					}										
					
					$where[$filter] = $filter_values[$key];
				}
			}
		}
		
		if (empty($sort))
		{
			$sort = 'id';
		}
		else
		{
			switch ($sort)
			{
				case 'group_name':
					switch ($table_name)
					{
						case 'sp_users':
							$sort = 'group_id'; 
							break;
						case 'sp_goods':
							$sort = 'type'; 
							break;
						case 'sp_projects':
							$sort = 'category_id'; 
							break;
						case 'sp_places':
							$sort = 'place_type'; 
							break;
					}							
					break;					
				case 'supplier_name':
					$sort = 'supplier'; 
					break;
				case 'project_name':
					$sort = 'project_result'; 
					break;
				case 'public_email':
					$sort = 'user_id'; 
					break;
			}
		}
		empty($sort_type) ? $sort_type = 'asc': '';
			
		
		$items_array = $this->Crank_model->get_all_entries($table_name, $where ,$start, $limit, $sort, $sort_type, $fields, $joins, false, $like);
		
		$items_count = count($this->Crank_model->get_all_entries($table_name, $where, 0, false, 'id', 'asc', $fields, $joins, false, $like));
		
		if (!empty($items_array))
		{
			
			$data['total'] = ceil($items_count/$limit);
			
			$data['pages'] = array();
			
			for($i = 0; $i < $data['total']; $i++)
			{
				$data['pages'][] = $i;
			}
			
			$data['curent_page'] = $this->input->post('start')/$limit;
			
			$lang_fields = $this->Crank_model->get_lang_fields($table_name);
		
			$data['response'] = $this->get_search_block($fields, $fields_types).$this->html_table($items_array, $fields_types, $lang_fields, $disabled_actions, $sortable);
			
		}
		else
		{
			$data['result']   = false;
			$data['response'] = $this->get_search_block($fields, $fields_types).'<p>'.$this->params['lang']['no_records'].'</p>';			
		}
		
		echo json_encode($data);
		
	}
	
	protected function get_search_block($fields, $fields_types)
	{	
		$titles = array();
		
		foreach ($fields as $key => $value)
		{
			foreach ($value as $val)
			{
				$sub_title = explode(" ", $val);
				if (!empty($sub_title[2])) array_push($titles, $sub_title[2]); else array_push($titles, $sub_title[0]);
			}
		}
		
		$html = '';							
		
		$html  = '<div id="search">';
		
		$html .= '<table class="gen_table" id="search_table" cellpadding="0" cellspacing="0">';
		
		$html .= '<tr>';
		
		foreach ($titles as $title)
		{																																
			
			empty($this->params['lang'][$title]) ? $field_title = $title : $field_title = $this->params['lang'][$title];
			
			if (!empty($fields_types[$title])):
				
				switch ($fields_types[$title])
				{
					case 'hidden':						
						break;
					default:
						$html .= '<td>'.$field_title.'</td>';
						break;
				}
			
			else:
			
				if ($title != 'logo' && $title != 'thumb') $html .= '<td>'.$field_title.'</td>';
				
			endif;
			
		}
		
		$html .= '</tr><tr>';
		
		foreach ($titles as $title)
		{																							
			
			empty($this->params['lang'][$title]) ? $field_title = $title : $field_title = $this->params['lang'][$title];
			
			if (!empty($fields_types[$title])):
				
				if (!is_array($fields_types[$title]))
				{
					switch ($fields_types[$title])
					{
						case 'hidden':		 				
							break;
						case 'date':
							$html .= '<td><input type="text" name="'.$title.'" class="picker" value=""/></td>';
							break;
						case 'bool':
							$html .= '<td><input class="filter" name="'.$title.'" type="checkbox"/><a href="javascript:void(0);" class="apply_filter" val="0" rel="'.$this->params['lang']['cancel'].'">'.$this->params['lang']['apply'].'</a></td>';
							break;						
						default:
							$html .= '<td><input name="'.$title.'" type="text" value=""/></td>';
							break;
					}
				}
				else{
					$html .= '<td><select class="filter" name="'.$title.'">';
					
					$html .= '<option value="all">'.$this->params['lang']['all'].'</option>';										
					
					foreach ($fields_types[$title] as $option)
					{							
						$a_option = array_values($option);
						$html .= '<option value="'.$a_option[0].'">'.$a_option[1].'</option>';
					}
					
					$html .= '</select></td>';
				}
			else:
			
				if ($title != 'logo' && $title != 'thumb') $html .= '<td><input name="'.$title.'" type="text" /></td>';
				
			endif;
			
		}
		
		$html .= '</tr>';
		
		$html .= '</table>';

		$html .= '<a href="javascript:void(0);" class="search_btn">'.$this->params['lang']['search'].'</a><a href="javascript:void(0);" class="reset_search_btn">'.$this->params['lang']['reset_search'].'</a></div>';
		
		return $html;
	}
	
	protected function get_view($data = array(), $table_name = false, $custom_view = false, $custom_data = array())
	{
	
		if (!$table_name) $table_name = $this->params['table_name'];
		
		$action = $this->input->post('action');
		
		if (!empty($data))
		{
			foreach ($data as $key => $value)
			{
				$this->params[$key] = $this->Crank_model->get_all_entries($value);
			}
		}
		
		
		
		if (!empty($custom_data)) 
		{
			foreach ($custom_data as $key => $value)
			{
				$this->params[$key] = $value;
			}
		}
		
		switch ($action)
		{
			case 'add':
				if ($custom_view)
					$view = $this->load->view('admin/'.$custom_view.'_add_view', $this->params, true);
				else
					$view = $this->load->view('admin/'.$this->input->post('entry').'_add_view', $this->params, true);
				break;
			case 'edit':								
					
				$this->params['entry'] = $this->Crank_model->get_entry_by_data($table_name, true, 'all');
				
				if ($custom_view)				
					$view = $this->load->view('admin/'.$custom_view.'_edit_view', $this->params, true);				
				else
					$view = $this->load->view('admin/'.$this->input->post('entry').'_edit_view', $this->params, true);
				break;			
		}
		
		$data = array(
			'response' => $view
		);
		
		echo json_encode($data);
	}
	
	protected function save_entry($table_name = false)
	{		
		
		if (!$table_name) $table_name = $this->params['table_name'];
	
		$data = array(
			'message' => $this->params['lang']['unknown_error']
		);
		
		$result = $this->Crank_model->save_entry($table_name);
		
		$data['entry'] = $result;
		
		if ($result === true)
		{
			$data['message'] = $this->params['lang']['success_update'];
		}
		else if ($result) $data['message'] = $this->params['lang']['success_added'];
		
		echo json_encode($data);
	}
	
	protected function remove_entry($table_name = false)
	{
		if (!$table_name) $table_name = $this->params['table_name'];
	
		$data = array(
			'message' => $this->params['lang']['unknown_error']
		);
		
		if ($this->Crank_model->remove_entry($table_name))
		{
			$data['message'] = $this->params['lang']['success_removed'];
		}		
		
		echo json_encode($data);
		
	}
	
	protected function trash_entry($table_name = false)
	{
		if (!$table_name) $table_name = $this->params['table_name'];
	
		$data = array(
			'message' => $this->params['lang']['unknown_error']
		);
		
		if ($this->Crank_model->trash_entry($table_name))
		{
			$data['message'] = $this->params['lang']['record_in_trash'];
		}		
		
		echo json_encode($data);
		
	}
	
	protected function recover_entry($table_name = false)
	{
		if (!$table_name) $table_name = $this->params['table_name'];
	
		$data = array(
			'message' => $this->params['lang']['unknown_error']
		);
		
		if ($this->Crank_model->recover_entry($table_name))
		{
			$data['message'] = $this->params['lang']['record_was_recovered'];
		}		
		
		echo json_encode($data);
		
	}

	protected function moderate_entry($table_name = false)
	{
		if (!$table_name) $table_name = $this->params['table_name'];
	
		$data = array(
			'message' => $this->params['lang']['unknown_error']
		);
		
		if ($this->Crank_model->moderate_entry($table_name))
		{
			$data['message'] = $this->params['lang']['record_was_moderated'];
		}		
		
		echo json_encode($data);
		
	}
	
	protected function check_system()
	{
		$data = array(
			'result'  => true,
			'message' => $this->params['lang']['system_element']
		);
		
		if (!$this->Crank_model->check_system($this->params['table_name'])) $data['result'] = false;
		
		echo json_encode($data);
		
	}
}

/* End of file crank.php */
/* Location: ./application/controllers/crank.php */