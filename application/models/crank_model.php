<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Crank_model extends CI_Model {

    protected $lang_fields = array(
		'sp_users' 					=> array('name', 'suname', 'about'),
		'sp_territories' 			=> array('name'),
		'sp_services_categories' 	=> array('name'),
		'sp_services' 				=> array('name', 'terms', 'condition', 'note'),
		'sp_settings' 				=> array('site_name', 'logo', 'thumb', 'copy_text', 'keywords', 'description'),
		'sp_scopes'   				=> array('name'),
		'sp_projectsstages'			=> array('name','description','report','product_links','feedback_links','workgroups_links','social_links', 'paper'),
		'sp_projects_categories' 	=> array('name'),
		'sp_projects' 				=> array('name', 'boss', 'purpose', 'short_description', 'tags', 'poster', 'note', 'map_description', 'contacts'),
		'sp_places_categories' 		=> array('name'),
		'sp_places' 				=> array('name', 'address', 'note'),
		'sp_pages' 				 	=> array('name', 'body', 'meta', 'description'),
		'sp_organizations' 			=> array('name', 'address', 'boss', 'description'),
		'sp_news' 					=> array('name', 'short_description', 'description'),
		'sp_methods' 				=> array('name', 'author', 'description', 'links'),
		'sp_ideas' 					=> array('name', 'author', 'description', 'tags'),
		'sp_groups' 				=> array('name'),
		'sp_grants' 				=> array('name', 'description'),
		'sp_goods_categories' 		=> array('name'),
		'sp_goods' 					=> array('name'),
		'sp_events_categories' 		=> array('name'),
		'sp_events' 				=> array('name', 'schedule', 'poster', 'description', 'price', 'tags'),
		'sp_anonses' 				=> array('name', 'description'),
		'sp_activities' 			=> array('name'),
		'sp_events_curators'		=> array(),
		'sp_events_organizes'		=> array(),
		'sp_events_methods'			=> array(),
		'sp_projectsstages_partners'=> array(),
		'sp_photos_report'			=> array('description'),
		'sp_videos_report'			=> array(),
		'sp_photos'					=> array(),
		'sp_videos'					=> array(),
		'sp_poll'					=> array('name'),
		'sp_poll_answers'			=> array('name'),
		'as_fields'					=> array('group_name','place', 'name', 'territory', 'supplier_name', 'project_name', 'your_name', 'partner_name', 'scope')
	);
	
/* --------------------------------------------------------------------------------- */	
	
	public function __construct()
	{
		parent::__construct();			
	}

/* --------------------------------------------------------------------------------- */	
	
	public function get_lang_fields($table)
	{						
		return array_merge($this->lang_fields[$table], $this->lang_fields['as_fields']);		
	}
	
/* --------------------------------------------------------------------------------- */	
	
	public function get_languages()
	{
		$this->db->order_by('id','asc');
		$query = $this->db->get('sp_languages');
		$res = $query->result_array();
		return $res;
	}

/* --------------------------------------------------------------------------------- */	
	
	public function get_language_id($name)
	{
		$query = $this->db->get_where('sp_languages',array('name' => $name));
		$res = $query->result_array();
		return $res[0]['id'];
	}

/* --------------------------------------------------------------------------------- */	
	
	public function get_count_entries($table_name)
	{		
		
		return $this->db->count_all_results($table_name);
		
	}
	
/* --------------------------------------------------------------------------------- */	
	
	public function get_all_entries($table_name, $where = array(), $start = 0, $limit = false, $sort = 'id', $sort_type = 'asc', $fields = array(), $joins = array(), $single = false, $like = array(), $distinct = false, $custom_where = false)
	{				
		
		if (!empty($fields))
		{
			foreach ($fields as $key => $value)
			{
				foreach ($value as $val)
				{
					$this->db->select($key.'.'.$val);
				}
			}
		}		
		if ($limit) $this->db->limit($limit, $start);	
		
		$this->db->order_by($table_name.'.'.$sort, $sort_type);
		
		if (!empty($joins))
		{
			foreach ($joins as $key => $value)
			{
				$this->db->join($key, $key.'.id = '.$table_name.'.'.$value,'left');
			}
		}				
		
		if (!empty($where))
		{
			foreach ($where as $key=>$value)
			{
				if ($value !== '') $this->db->where($table_name.'.'.$key, $value);
			}
		};
		
		if ($custom_where):
		
			$this->db->where($custom_where);
		
		endif;				
		
		if ($distinct) $this->db->distinct();			
		
		$query = $this->db->get($table_name);
		
		
		
		$results = $query->result_array();		
		
		return $this->lang_response($results, $this->get_lang_fields($table_name), $single, 'current', $like);
		
	}

/* --------------------------------------------------------------------------------- */	
	
	function get_entry_by_data($table_name, $single = false, $lang = 'current', $data = array())
	{		
		if (empty($data)) $data = array('id' => $this->input->post('id'));
		
		$query = $this->db->get_where($table_name, $data);
		
		$res = $query->result_array();
		
		return $this->lang_response($res, $this->get_lang_fields($table_name), $single, $lang);
	}

/* --------------------------------------------------------------------------------- */	
	
	function lang_response($results, $lang_fields, $single = false, $lang = 'current', $like = array())
	{
		$response = array();
		
		if (!empty($results))
		{
			foreach ($results as $row)
			{
				foreach ($row as $key => $value)
				{
					if (in_array($key, $lang_fields))
					{
						switch ($lang)
						{
							case 'current':
								$field_lang = json_decode($value, true);								
								$row[$key]  = $field_lang[$this->session->userdata('lang_id')];
								break;
							case 'all':
								$row[$key]  = json_decode($value, true);
								break;
						}
						
					}
				}
								
				if (!empty($like))
				{
					$status = 0;										
					
					foreach ($like as $key=>$value)
					{															
						if ($value != "" && !empty($row[$key]) && strpos(mb_strtolower((string)$row[$key]), mb_strtolower((string)$value))!==false) $status++;
					}										
					
					($status == count($like)) ? array_push($response, $row) : '';
				} 
				else array_push($response, $row);
			}
			
			if ($single) return $response[0]; else return $response;
		}		
			
		return $results;
	}

/* --------------------------------------------------------------------------------- */	

	function save_entry($table_name)
	{	
		
		$keys = $this->input->post('keys');			
		
		$post_data = $this->input->post('data');
		
		$lang_keys = $this->input->post('lang_keys');			
		
		$lang_post_data = $this->input->post('lang_data');		
		
		$data = array();
		
		$i = 0;
		
		if (!empty($keys)):
		
			foreach ($keys as $key)
			{
				switch ($key)
				{
					case 'password':
							$data[$key] = md5($post_data[$i]);
							break;
					default:
							$data[$key] = $post_data[$i];
							break;
				}								
				
				$i++;
			}
			
		endif;
		
		if (!empty($lang_keys)):
		
			$lang_data = array();		
			
			$languages = $this->get_languages(); // get all languages
					
			$i = 0;
			$j = 0;
			foreach ($lang_keys as $key)
			{
				if (!$j)
				{
					foreach ($languages as $language)
					{
						$lang_data[$key][$language['id']] = $lang_post_data[$i];
						$i++;				
					}				
				}
				if ($j == count($languages)-1) $j = 0; else $j++;
			}
							
			foreach ($lang_keys as $key)
			{
				$data[$key] = json_encode($lang_data[$key]);
			}		
			
		endif;
		
		$id = $this->input->post('id');
		
		if (intval($id))
		{
			$query = $this->db->get_where($table_name, array('id' => $id));
			
			$result = $query->result_array();
			
			if (!empty($result[0]['foto']) && !empty($data['foto']) && ($result[0]['foto']!=$data['foto'])) unlink($result[0]['foto']);
			if (!empty($result[0]['thumb']) && !empty($data['thumb']) && ($result[0]['thumb'] != $data['thumb'])) unlink($result[0]['thumb']);
			
			$this->db->where('id',$id);
			if ($this->db->update($table_name, $data)) return true; else return false;			
		}
		else 
		{
			if ($this->db->insert($table_name, $data))
			{
				return $this->get_entry_by_data($table_name, true, 'current', array('id' => $this->db->insert_id())); 
			}
			else return false;
		}	
	}

/* --------------------------------------------------------------------------------- */	
	
	function remove_entry($table_name, $id = false)
	{
		if (!$id) $id = $this->input->post('id');
		
		if ($id)
		{
			$query = $this->db->get_where($table_name, array('id' => $id));
			
			$result = $query->result_array();
			
			if (!empty($result[0]['foto'])) unlink($result[0]['foto']);
			if (!empty($result[0]['thumb'])) unlink($result[0]['thumb']);
			
			if ($this->db->delete($table_name, array('id' => $id))) return true;
		}
		
		return false;
	}

/* --------------------------------------------------------------------------------- */	
	
	function check_system($table_name, $id = false)
	{
		if (!$id) $id = $this->input->post('id');
		
		if ($id)
		{
			$entry = $this->get_entry_by_data($table_name, true, 'current', array('id'=>$id));
			if (!empty($entry) && $entry['system']) return true;
		}
		
		return false;
	}
	
}