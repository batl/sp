<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Joins extends Crank {

	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base']);
		
		$this->params['table_name'] = 'as_fields';
	}		
	
	public function get_items($join)
	{
		
		$join = explode("-",$join);
		
		$table_name = "sp_".implode('_',array($join[0], $join[1]));
		
		$disabled = array('edit');
		
		if (!empty($join[4])) 
		{
			$select = array(
				$table_name    => array('id', $join[4]),
				'sp_'.$join[2] => array('name')			
			); 
			
			$types = array('type' => 'enum', 'id' => 'hidden');				
			$joins = array('sp_'.$join[2] => $join[2]."_id");			
		}
		else 
		{
			switch ($join[2])
			{
				case 'photos':
					$select = array(
						$table_name    => array('id','thumb as photo','description')
					);
					$types = array('id' => 'hidden');
					$joins = array();
					$disabled = array();
					break;
				case 'videos':
					$select = array(
						$table_name    => array('id','url as video', 'description')
					);
					$types = array('video' => 'video', 'id' => 'hidden');
					$joins = array();
					$disabled = array();
					break;
				default:
					$select = array(
						$table_name    => array('id'),
						'sp_'.$join[2] => array('id', 'name')
					);
					$types = array('id' => 'hidden');
					$joins = array('sp_'.$join[2] => $join[2]."_id");					
					break;
			}			
		}
		
		parent::get_items(
			$table_name, 
			$select, 		// select fields
			$joins,	 		// joins table
			$types,			// fields types
			array(
				'entry_id'=> $join[3]
			),				// where
			$disabled		// disabled actions
		);
	}		
	
	public function get_view($join)
	{	
		
		$input = explode("-",$join);				
		
		empty($input[4])?$type = false:$type = true;
		
		$table_name = true;
		
		switch ($input[2])
		{
			case 'photos':
				$get_entries = array();
				$table_name = "sp_photos_report";
				break;
			case 'videos':
				$get_entries = array();
				$table_name = "sp_videos_report";
				break;
			default:
				$get_entries = array(				
					'join_entries' => "sp_".$input[2]
				);
				break;
		}
			
		parent::get_view(
			$get_entries,   // get all item from tables
			$table_name,  	// table
			'join',			// custom view
			array(
				'entry_id'   => $input[3],
				'field_name' => $input[2]."_id",
				'type'		 => $type
			)			    // custom data
		);
	}
	
	public function save_entry($join)
	{
		$join = explode("-",$join);
		
		$table_name = "sp_".implode('_',array($join[0], $join[1]));
	
		parent::save_entry($table_name);
	}
	
	public function remove_entry($join)
	{
		
		$join = explode("-",$join);
		
		$table_name = "sp_".implode('_',array($join[0], $join[1]));
	
		parent::remove_entry($table_name);
	}
}

/* End of file joins.php */
/* Location: ./application/controllers/joins.php */
