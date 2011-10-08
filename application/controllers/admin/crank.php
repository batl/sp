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
		$this->include_js('admin/main.js');				
		$this->include_css('admin/main.css');
		
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
	
	protected function include_js($string)
	{ 
		$count = count($this->params['include_js']);
		$this->params['include_js'][$count] = "<script type='text/javascript' src='".$this->params['base_js'].$string."'></script>";
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
	
	protected function html_table($array, $fields_types = array(), $lang_fields = array(), $disabled_actions = array())
	{
		$html = '';
		
		if (!empty($array))
		{
			$html = '<table class="gen_table" cellpadding="0" cellspacing="0">';
			
			$titles = array_keys($array[0]);						
			
			$html .= '<tr class="t_title">';			
			
			$sort_field = $this->input->post('sort');
			
			foreach ($titles as $title)
			{			
				$type_sort = $this->input->post('sort_type');
			
				if ($sort_field == $title)
				{
					if ($type_sort == 'asc') $type_sort = 'desc'; else $type_sort = 'asc';
				}
				else $type_sort = 'desc';							
				
				if (empty($this->params['lang'][$title])) $field_title = $title; else $field_title = $this->params['lang'][$title];
				
				$html .= '<td class="sorting" sort="'.$type_sort.'"><span class="display_none">'.$title.'</span>'.$field_title.'</td>';							
				
			}
			
			$html .= '<td style="cursor:default; color:#ccc; text-decoration:underline;">'.$this->params['lang']['actions'].'</td>';

			$html .= '</tr>';
			
			foreach ($array as $row)
			{
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
									intval($cell)?$html .= '<td>'.$this->params['lang']['yes'].'</td>':$html .= '<td>'.$this->params['lang']['no'].'</td>';
									break;
								case 'price':
									$html .= '<td>'.$cell.' грн.</td>';
									break;
								case 'date':
									$date = explode(" ",date("j M Y",strtotime($cell)));
									if (!empty($date))
										$html .= '<td>'.$date[0].' '.$this->params['lang']['month'][strtolower($date[1])].' '.$date[2].'</td>';
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
								default:
									$html .= '<td>'.$cell.'</td>';	
									break;
							}
						}
						else $html .= '<td>'.$cell.'</td>';						
					}
				}
				
				// Entry Actions 
				
				$html .= '<td>';
					if (!in_array('edit', $disabled_actions))
						$html .= '<a href="javascript:void(0);" class="edit_item">'.$this->params['lang']['edit'].'</a>';
					if (!in_array('remove', $disabled_actions))
						$html .= '<a href="javascript:void(0);" class="remove_item">'.$this->params['lang']['remove'].'</a>';
					
					switch ($this->params['table_name'])
					{
						case "sp_projects":
							$html .= '<a href="javascript:void(0);" class="projects_stages">'.$this->params['lang']['stages'].'</a>';
							break;
						case "sp_events":
							$html .= '<a href="javascript:void(0);" id="events-curators-organizations" class="event_action">'.$this->params['lang']['curators'].'</a>';
							$html .= '&nbsp;<a href="javascript:void(0);" id="events-methods-methods" class="event_action">'.$this->params['lang']['methods'].'</a>';
							$html .= '&nbsp;<a href="javascript:void(0);" id="events-organizes-organizations" class="event_action">'.$this->params['lang']['organizators'].'</a>';
							break;
						case "sp_projectsstages":
							$html .= '&nbsp;<a href="javascript:void(0);" id="projectsstages-partners-organizations" class="stage_partners">'.$this->params['lang']['partners'].'</a>';
							$html .= '&nbsp;<a href="javascript:void(0);" id="photos-report-photos" class="stage_action">'.$this->params['lang']['photos'].'</a>';
							$html .= '&nbsp;<a href="javascript:void(0);" id="videos-report-videos" class="stage_action">'.$this->params['lang']['video'].'</a>';
							break;
					}
					
				$html .= '</td>';
				
				$html .= '</tr>';
			}
			
			$html .= '</table>';
		}
		
		return $html;		
	}
	
	public function get_items($table_name = false, $fields = array(), $joins = array(), $fields_types = array(), $where = array(), $disabled_actions = array())
	{
		$data = array(
			'result' => true			
		);
		
		if (!$table_name) $table_name = $this->params['table_name'];
		
		$start = $this->input->post('start');
		$sort  = $this->input->post('sort');
		$sort_type = $this->input->post('sort_type');
		
		empty($sort) ? $sort = 'id': '';
		empty($sort_type) ? $sort_type = 'asc': '';
				
		if (!empty($start)) 
		{
			$limit = 12;
		}
		else
		{
			$limit = false;
			$start = 0;
		}
		
		$items_array = $this->Crank_model->get_all_entries($table_name, $where ,$start, $limit, $sort, $sort_type, $fields, $joins);
		
		$items_count = count($this->Crank_model->get_all_entries($table_name, $where));
		
		if (!empty($items_array))
		{
			
			$data['total'] = ceil($items_count/12);
			
			$data['pages'] = array();
			
			for($i = 0; $i < $data['total']; $i++)
			{
				$data['pages'][] = $i;
			}
			
			$data['curent_page'] = $this->input->post('start')/12;
			
			$lang_fields = $this->Crank_model->get_lang_fields($table_name);
		
			$data['response'] = $this->html_table($items_array, $fields_types, $lang_fields, $disabled_actions);
			
		}
		else
		{
			$data['result']   = false;
			$data['response'] = '<p>'.$this->params['lang']['no_records'].'</p>';			
		}
		
		echo json_encode($data);
		
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