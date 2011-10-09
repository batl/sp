<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'models/crank_model.php');


class Poll_model extends Crank_Model {

    public function __construct()
	{
		parent::__construct();			
		
	}
	
	function update_poll($answer_id, $count)
	{
		$table_name = "sp_poll_answers";
		$this->db->where('id', $answer_id);
		return $this->db->update($table_name, array('count' => $count));
	}
	
}