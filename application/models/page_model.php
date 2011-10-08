<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'models/crank_model.php');


class Page_model extends Crank_Model {

    var $table_name = "sp_pages";
	
	public function __construct()
	{
		parent::__construct();			
		
	}		
	
	function get_pages($type)
	{	
		
		return parent::get_entry_by_data($this->table_name, false, 'current', array('in_'.$type => 1));
	}
	
	function get_page_by_data($data)
	{		
		return parent::get_entry_by_data($this->table_name, true, 'current', $data);
	}
	
}