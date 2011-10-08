<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Group extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base'].'login');

		$this->include_js('admin/pages/user.js');
		$this->include_js('tiny_mce/tiny_mce.js');
		$this->include_css('admin/pages/user.css');
		
		$this->params['table_name'] = 'sp_groups';
		$this->params['tables'] = array('activities','scopes','territories');
	}		
	
	public function get_items($table)
	{
		if ($table != 'undefined') { in_array($table, $this->params['tables'])?$table = "sp_".$table:$table = "sp_".$table."_categories";} else $table = false;
		parent::get_items($table);
	}		
	
	public function get_view($table)
	{		
		if ($table != 'undefined') { in_array($table, $this->params['tables'])?$table = "sp_".$table:$table = "sp_".$table."_categories";} else $table = false;
		parent::get_view(null, $table);
	}
	
	public function save_entry($table)
	{
		if ($table != 'undefined') { in_array($table, $this->params['tables'])?$table = "sp_".$table:$table = "sp_".$table."_categories";} else $table = false;
		parent::save_entry($table);
	}
	
	public function remove_entry($table)
	{
		if ($table != 'undefined') { in_array($table, $this->params['tables'])?$table = "sp_".$table:$table = "sp_".$table."_categories";} else $table = false;
		parent::remove_entry($table);
	}
	
}

/* End of file group.php */
/* Location: ./application/controllers/group.php */