<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'models/crank_model.php');


class User_model extends Crank_Model {

    var $table_name = "sp_users";
	
	public function __construct()
	{
		parent::__construct();					
	}	
	
	function get_user_by_data($data, $single)
	{
		return parent::get_entry_by_data($this->table_name, $single, 'current', $data);
	}
	
	function insert_entry()
	{			
		
		$languages = $this->get_languages();
		
		$name = array();
		
		foreach ($languages as $language)
		{
			if ($language['id'] == $this->session->userdata('lang_id')) 
				
				$name[$language['id']] = $this->input->post('name');
			
			else
				
				$name[$language['id']] = "";
		}
		
		$data = array(
			'name'			=> json_encode($name),
			'email'			=> trim($this->input->post('email')),
			'password' 		=> md5(trim($this->input->post('password'))),
			'verify_code'	=> md5($this->input->post('name').mktime())
		);
		if ($this->db->insert($this->table_name, $data)) return $this->db->insert_id();				
		
		return false;
	}
	
	function update_user()
	{		
		
		$this->db->where('id',$this->input->post('id'));
		
		$password = $this->input->post('password');
		
		if (!empty($password))
		{
			if ($this->db->update($this->table_name, array('password' => md5($password)))) return true; 
		}
		else
		{
			if ($this->db->update($this->table_name, $this->input->post())) return true;			
		}		
		
		return false;
	}
	
	function entry_confirmed($id)
	{		
		$this->db->where('id',$id);
		if ($this->db->update($this->table_name, array('confirmed' => 1))) return true;
		
		return false;
	}	
	
	function chek_admin_entry()
	{
		$email 		= $this->input->post('email');
		$password 	= md5($this->input->post('password'));
				
		$query 		= $this->db->get_where($this->table_name, array('email'=>$email,'password'=>$password,'group_id' => 1));
		$res 		= $query->result_array();
		
		if 	(!empty($res)) return $res[0]['id'];
		
		return false;
	}
	
}