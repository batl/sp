<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Poll extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);
				
		$this->params['main_navi'] = 7;		
		
		$this->include_js('jquery/ajaxupload.js');		
		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.dialog.js');		
		$this->include_js('jquery/ui/jquery.ui.position.js');
		$this->include_js('jquery/ui/jquery.ui.datepicker.js');
		$this->include_js('admin/pages/poll.js');		
		$this->include_css('ui/jquery.ui.all.css');	
		
		$this->params['table_name'] = 'sp_poll';
	}
	
	public function index()
	{
		$this->set_title($this->params['lang']['poll']);
		$this->include_keywords($this->params['lang']['poll']);
		$this->set_description($this->params['lang']['poll']);	
		
		$this->params['trash_polls'] = count($this->Crank_model->get_all_entries('sp_poll', array('basket' => 1, 'project_id' => 0)));
		$this->params['count_polls'] = count($this->Crank_model->get_all_entries('sp_poll', array('basket' => 0, 'project_id' => 0)));
		
		$this->include_view('poll_view',$this->params);
	}
	
	public function get_items($project_id)
	{
		$disabled_actions = array('recover');
		
		if ($project_id == 'trash')
		{
			$trash = 1;
			$disabled_actions = array('edit');
		}
		else $trash = 0;
		
		parent::get_items(
			false,  // table name (false = default controller table)
			array(
				'sp_poll' => array('id','name','date_start','date_end', 'active')
			),// fields
			array(),	// joins		
			array('date_start' => 'date', 'date_end' => 'date', 'active' => 'bool', 'id' => 'hidden'), // types
			array('project_id' => $project_id, 'basket' => $trash), // where
			$disabled_actions
		);
	}		
	
	public function get_view($id = 0)
	{		
		parent::get_view(array('pages' => 'sp_pages'), false, false, array('project_id' => $id));			
	}
	
	public function save_entry()
	{
		parent::save_entry();
	}
	
	public function remove_entry()
	{
		parent::remove_entry();
	}
	
	public function trash_entry()
	{
		parent::trash_entry();
	}
	
	public function recover_entry()
	{
		parent::recover_entry();
	}
}

/* End of file poll.php */
/* Location: ./application/controllers/poll.php */