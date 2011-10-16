<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Settings extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);
				
		$this->params['main_navi'] = 11;		
		$this->lang->load('profile', $this->params['language']);
		$this->params['lang'] = $this->lang->language;
		$this->include_js('jquery/ajaxupload.js');		
		$this->include_js('admin/pages/settings.js');
		$this->include_js('jquery/colorpicker/colorpicker.js');
		$this->include_js('jquery/colorpicker/eye.js');
		$this->include_js('jquery/colorpicker/layout.js');
		$this->include_js('jquery/colorpicker/utils.js');
		$this->include_css('colorpicker/colorpicker.css');
		$this->include_css('colorpicker/layout.css');
		
		$this->params['settings'] = $this->Crank_model->get_entry_by_data("sp_settings", true, 'all', array('id'=>1));
		
		$this->params['table_name'] = 'sp_settings';
	}
	
	public function index()
	{			
		$this->set_title($this->params['lang']['settings']);
		$this->include_keywords($this->params['lang']['settings']);
		$this->set_description($this->params['lang']['settings']);									
		
		$this->params['view'] = $this->load->view('admin/settings_main_view', $this->params, true);	
		$this->include_view('settings_view',$this->params);
	}

	public function page()
	{
		$view = $this->input->post('page');
		
		$data = array(
			'view' => $this->load->view('admin/settings_'.$view, $this->params, true)
		);
		
		echo json_encode($data);
	}	
	
	public function save_entry()
	{
		parent::save_entry();
	}
}

/* End of file settings.php */
/* Location: ./application/controllers/settings.php */