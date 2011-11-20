<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class User extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);
				
		$this->params['main_navi'] = 8;	

		$this->include_js('jquery/ajaxupload.js');

		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.dialog.js');		
		$this->include_js('jquery/ui/jquery.ui.position.js');
		
		$this->include_js('admin/pages/user.js');		
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('admin/pages/user.css');
		$this->include_css('ui/jquery.ui.all.css');
		
		$this->params['table_name'] = 'sp_users';
	}	
	
	public function index()
	{
		$this->set_title($this->params['lang']['users']);
		$this->include_keywords($this->params['lang']['users']);
		$this->set_description($this->params['lang']['users']);				
		
		$this->params['trash_users'] = count($this->Crank_model->get_all_entries('sp_users', array('basket' => 1)));
		$this->params['count_users'] = count($this->Crank_model->get_all_entries('sp_users', array('basket' => 0)));
		
		$this->params['views']['group_modal_form'] = $this->load->view('admin/group_add_view', $this->params, true);
		
		$this->include_view('user_view',$this->params);
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
			false, 	// table name (false = default controller table)
			array(
				'sp_users'  => array('id','thumb', 'name as your_name','suname','email','phone','confirmed', 'group_id'),
				'sp_groups' => array('name as group_name')
			), 		// get fields
			array(
				'sp_groups' => 'group_id'
			),		// joins
			array(
				'confirmed' => 'bool',				
				'group_name' => $this->Crank_model->get_all_entries('sp_groups'),
				'id' => 'hidden',
				'group_id' => 'hidden'
			),		// fields types (bool, price)
			array(
				'basket' 		=> $trash
			),
			$disabled_actions
		);
	}		
	
	public function get_view()
	{		
		parent::get_view(array('groups' => 'sp_groups'));
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

/* End of file page.php */
/* Location: ./application/controllers/page.php */