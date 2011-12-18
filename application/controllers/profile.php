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
		$this->include_css('colorpicker/colorpicker.css');
		$this->include_css('colorpicker/layout.css');
		$this->include_css('ui/jquery.ui.all.css');				
		$this->include_js('tiny_mce/tiny_mce.js');
		
		switch ($this->config->item('env_type'))
		{
			case 'dev':
				$this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxRUJ1hqatF4AoZmN6zEkqgOyqwRlxTq-Alw-c5cQL1BzkQ16NsKaqBY6w', true);
				break;
			case 'devmax':
				$this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxQ_XhwsaFE8QWbhjrQXcNpGHT4T3xQbEuuvb8nMFIwjCs15e_OMHD7eoA', true);
				break;
			case 'goodpro':
				$this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxQ8Bc5fCdX1fgOPxwM6Bz1_jX0daRQJf2hhycNAHdebITDfBq3fP0Z23w', true);
				break;
			default:
				$this->include_js('http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA6yP--2v-CDoEpX6OnpY-sxT8FfoTSPNSCinLNsksAZkths46yxSraikQy6QrFI22T_VOWK_S7Eud3g', true);
				break;
		}						
		
		$this->include_js('pages/profile.js');
		$this->params['user'] = $this->Crank_model->get_entry_by_data("sp_users", true, 'all', array('id' => $this->session->userdata('user_id')));
	}
	
	public function index()
	{			
		$this->set_title($this->params['lang']['profile'].' '.$this->params['user']['name'][$this->params['language_id']].' '.$this->params['user']['suname'][$this->params['language_id']]);
		$this->include_keywords($this->params['lang']['profile'].' '.$this->params['user']['name'][$this->params['language_id']].' '.$this->params['user']['suname'][$this->params['language_id']]);
		$this->set_description($this->params['lang']['profile'].' '.$this->params['user']['name'][$this->params['language_id']].' '.$this->params['user']['suname'][$this->params['language_id']]);									
		
		$this->params['place_types'] = $this->Crank_model->get_all_entries('sp_places_categories');
		$this->params['scopes'] 	 = $this->Crank_model->get_all_entries('sp_scopes');
		
		$this->params['views']['group_modal_form'] = $this->load->view('admin/group_add_view', $this->params, true);
		$this->params['views']['place_modal_form'] = $this->load->view('admin/place_add_view', $this->params, true);			
		$this->params['views']['method_modal_form'] = $this->load->view('admin/methods_add_view', $this->params, true);
		
		$this->include_view('profile_view',$this->params);
	}
	
	public function page()
	{
		$view = $this->input->post('page');
								
		$data = array(
			'response' => $this->load->view('profile_'.$view, $this->params, true)
		);
		
		echo json_encode($data);
				
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