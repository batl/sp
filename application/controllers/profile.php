<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/crank.php');

class Profile extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['user_id'])) redirect($this->params['base']);				
				
		$this->params['main_navi'] = 2;		
		$this->lang->load('profile', $this->params['language']);
		$this->params['lang'] = $this->lang->language;
		$this->include_js('jquery/ajaxupload.js');
		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.datepicker.js');
		$this->include_js('jquery/colorpicker/colorpicker.js');
		$this->include_js('jquery/colorpicker/eye.js');
		$this->include_js('jquery/colorpicker/layout.js');
		$this->include_js('jquery/colorpicker/utils.js');			
		$this->include_css('colorpicker/colorpicker.css');
		$this->include_css('colorpicker/layout.css');
		$this->include_css('ui/jquery.ui.all.css');				
		$this->include_js('tiny_mce/tiny_mce.js');
		
		($this->config->item('env_type') == 'dev') ? $this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxRUJ1hqatF4AoZmN6zEkqgOyqwRlxTq-Alw-c5cQL1BzkQ16NsKaqBY6w', true) :  $this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxT8FfoTSPNSCinLNsksAZkths46yxSraikQy6QrFI22T_VOWK_S7Eud3g', true);
		
		$this->include_js('pages/profile.js');
		$this->params['user'] = $this->Crank_model->get_entry_by_data("sp_users", true, 'all', array('id' => $this->session->userdata('user_id')));
	}
	
	public function index()
	{			
		$this->set_title($this->params['lang']['profile'].' '.$this->params['user']['name'][$this->params['language_id']].' '.$this->params['user']['suname'][$this->params['language_id']]);
		$this->include_keywords($this->params['lang']['profile'].' '.$this->params['user']['name'][$this->params['language_id']].' '.$this->params['user']['suname'][$this->params['language_id']]);
		$this->set_description($this->params['lang']['profile'].' '.$this->params['user']['name'][$this->params['language_id']].' '.$this->params['user']['suname'][$this->params['language_id']]);									
		
		//$this->params['view'] = $this->load->view('profile_main_view', $this->params, true);
		$this->include_view('profile_view',$this->params);
	}
	
	public function page()
	{
		$view = $this->input->post('page');
		
		switch ($view)
		{
			case 'projects':
				
				$fields = array(
					'sp_projects' => array('id','thumb','name','date','short_description','slug'),
					'sp_places' => array('name as place'),
					'sp_projects_categories' => array('name as group_name')
				); 
				$joins = array(
					'sp_places'=>'place', 
					'sp_projects_categories' => 'category_id'
				);
				$where = array(
					'user_id' => $this->session->userdata('user_id')
				);
				
				parent::get_items('sp_projects', 'profile_projects_view', $fields, $joins, $where);
				
				break;
			case 'events':
			
				break;
			default:
				
				$data = array(
					'response' => $this->load->view('profile_'.$view, $this->params, true)
				);
				
				echo json_encode($data);
				
				break;
		}				
	}
	
	public function update()
	{
		$data = array(
			'result'  => true,
			'message' => $this->params['lang']['success_update']
		);
		
		$this->load->model('User_model');
		
		if ($this->User_model->update_user()) 
			echo json_encode($data);
		else
		{
			$data = array(
				'result'  => false,
				'message' => $this->params['lang']['failed_update']
			);
			echo json_encode($data);
		}
		
	}
	
}

/* End of file profile.php */
/* Location: ./application/controllers/profile.php */