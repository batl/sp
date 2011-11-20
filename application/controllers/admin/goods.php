<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Goods extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);				
				
		$this->params['main_navi'] = 4;		
		
		$this->include_js('jquery/ajaxupload.js');
		
		$this->include_js('jquery/ui/jquery.ui.core.js');
		$this->include_js('jquery/ui/jquery.ui.widget.js');
		$this->include_js('jquery/ui/jquery.ui.dialog.js');		
		$this->include_js('jquery/ui/jquery.ui.position.js');
		
		$this->include_js('admin/pages/goods.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('admin/pages/goods.css');
		$this->include_css('ui/jquery.ui.all.css');
		
		$this->params['table_name'] = 'sp_goods';
	}
	
	public function index()
	{	
		$this->set_title($this->params['lang']['goods']);
		$this->include_keywords($this->params['lang']['goods']);
		$this->set_description($this->params['lang']['goods']);	

		$this->params['scopes'] 	= $this->Crank_model->get_all_entries('sp_scopes');
		$this->params['activities'] = $this->Crank_model->get_all_entries('sp_activities');
		$this->params['places'] 	= $this->Crank_model->get_all_entries('sp_places');
		$this->params['place_types'] = $this->Crank_model->get_all_entries('sp_places_categories');
		
		$this->params['trash_goods'] = count($this->Crank_model->get_all_entries('sp_goods', array('basket' => 1)));
		$this->params['count_goods'] = count($this->Crank_model->get_all_entries('sp_goods', array('basket' => 0)));
		$this->params['trash_services'] = count($this->Crank_model->get_all_entries('sp_services', array('basket' => 1)));
		$this->params['count_services'] = count($this->Crank_model->get_all_entries('sp_services', array('basket' => 0)));
		
		$this->params['views']['group_modal_form'] = $this->load->view('admin/group_add_view', $this->params, true);
		$this->params['views']['place_modal_form'] = $this->load->view('admin/place_add_view', $this->params, true);
		$this->params['views']['organization_modal_form'] = $this->load->view('admin/organizations_add_view', $this->params, true);
		
		$this->include_view('goods_view',$this->params);
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
			false,  // table name (false = default controller table)
			array(
				'sp_goods' 				=> array('id','thumb','name','price'),
				'sp_goods_categories' 	=> array('name as group_name'),
				'sp_organizations' 		=> array('name as supplier_name'),
				'sp_projects' 			=> array('name as project_name')
			), 		// get fields
			array(
				'sp_goods_categories'	=>'type', 
				'sp_organizations'		=>'supplier', 
				'sp_projects'			=>'project_result'
			),		// joins
			array(
				'price' 		=> 'price',
				'id'			=> 'hidden',
				'group_name' 	=> $this->Crank_model->get_all_entries('sp_goods_categories'),
				'supplier_name' => $this->Crank_model->get_all_entries('sp_organizations', array(), 0, false, 'id', 'asc', array('sp_organizations' => array('id', 'name'))),
				'project_name' 	=> $this->Crank_model->get_all_entries('sp_projects', array(), 0, false, 'id', 'asc', array('sp_projects' => array('id', 'name')))
			),		 // fields types (bool, price)
			array(
				'basket' 		=> $trash
			),
			$disabled_actions
		);
	}		
	
	public function get_view()
	{		
		parent::get_view(
			array(
				'groups' 		=> 'sp_goods_categories',
				'organizations' => 'sp_organizations', 
				'projects'      => 'sp_projects'
			)
		);
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

/* End of file goods.php */
/* Location: ./application/controllers/goods.php */