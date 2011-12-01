<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'models/crank_model.php');


class Project_model extends Crank_Model {

	var $table_name = "sp_projects";

    public function __construct()
	{
		parent::__construct();			
		
	}	
	
	public function check_slug()
	{
		$slug = $this->input->post('slug');
		
		if ($slug != '')
		{
			$query 		= $this->db->get_where($this->table_name, array('slug'=> $slug));
			
			$res 		= $query->result_array();
			
			if 	(!empty($res)) 
				return false;
			else
				return true;
		}
		
		return false;
				
	}
	
}