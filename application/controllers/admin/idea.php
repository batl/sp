<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Idea extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
				
		$this->params['main_navi'] = 5;		
		
		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.dialog.js');		
		$this->include_js('jquery/ui/jquery.ui.position.js');
		
		$this->include_js('admin/pages/project.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('ui/jquery.ui.all.css');		
		$this->include_css('admin/pages/project.css');
		
		$this->params['table_name'] = 'sp_ideas';
	}
	
	public function index()
	{
		$this->set_title($this->params['lang']['ideas']);
		$this->include_keywords($this->params['lang']['ideas']);
		$this->set_description($this->params['lang']['ideas']);				
		$this->include_view('project_view',$this->params);
	}
	
	public function get_items($trash)
	{
	
		$disabled_actions = array('recover');
		
		if ($trash == 'trash')
		{
			$trash = 1;
			$disabled_actions = array('edit');
		}
		else $trash = 0;
		
		parent::get_items(
			false, 
			array(
				'sp_ideas' => array('id','name', 'visible'),
				'sp_scopes' => array('name as scope')			
			), 
			array(
				'sp_scopes'=>'scope'
			),
			array(
				'id' => 'hidden',
				'visible' => 'bool',
				'scope' => $this->Crank_model->get_all_entries('sp_scopes')
			),
			array(
				'basket' 		=> $trash
			),
			$disabled_actions
		);
	}		
	
	public function get_view()
	{		
		parent::get_view(array('scopes' => 'sp_scopes', 'groups' => 'sp_ideas_categories'));
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
	
	public function moderate_entry()
	{
		parent::moderate_entry();
	}
}

/* End of file idea.php */
/* Location: ./application/controllers/idea.php */