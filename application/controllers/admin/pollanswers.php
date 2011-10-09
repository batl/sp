<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Pollanswers extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base'].'login');				
				
		$this->params['main_navi'] = 13;		
		
		$this->include_js('admin/pages/poll.js');		
		
		$this->params['table_name'] = 'sp_poll_answers';
	}
	
	public function index()
	{					
		
	}
	
	public function get_items($id)
	{
		parent::get_items(
			false, 
			array(
				'sp_poll_answers' => array('id','name','thumb','count as answers_count')
			), 
			array(),			
			array(),
			array(
				'poll_id'=> $id
			)
		);
	}		
	
	public function get_view($id)
	{		
		parent::get_view(array(), false, false, array('poll_id' => $id));
	}
	
	public function save_entry()
	{
		parent::save_entry();
	}
	
	public function remove_entry()
	{
		parent::remove_entry();
	}
}

/* End of file pollanswers.php */
/* Location: ./application/controllers/pollanswers.php */