<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/crank.php');

class Main extends Crank {

	public function __construct()
	{
		parent::__construct();	
		$this->load->model("Main_model");
		$this->params['main_navi']=1;		
	}		
	
	public function index()
	{										
		$this->set_title($this->params['lang']['menu_home']);
		$this->set_description($this->params['lang']['menu_home']);
		
		$this->include_js('pages/news.js');
		$this->include_js('jquery/lightbox.js');				
		$this->include_js('jquery/cycle.js');				
		$this->include_css('lightbox.css');				
		
		$this->params['anonses'] = $this->Crank_model->get_all_entries(
			"sp_anonses", 
			array(
				'in_slider' => 1
			)
		);
		
		$this->params['poll'] = $this->Crank_model->get_all_entries(
			"sp_poll", 							
			array(
				'active' => 1,
				'on_page' => 0,
				'date_start <=' => date("Y-m-d"),
				'date_end >=' => date("Y-m-d")
			),
			0,
			false,
			'id',
			'asc',
			array(),
			array(),
			true
		);
		
		if (!empty($this->params['poll']))
		{
			$this->params['poll_answers'] = $this->Crank_model->get_all_entries(
				"sp_poll_answers", 							
				array(
					'poll_id' => $this->params['poll']['id']
				)
			);
		}
		
		$this->include_view('main_view',$this->params);
	}
	
	function set_language()
	{
		
		$this->session->set_userdata(array('lang' => $this->input->post('lang')));
		
	}
	
	function update_poll()
	{
		$poll_id 	= $this->input->post('poll_id');
		$answer_id 	= $this->input->post('answer_id');
		
		$data = array(
			'result' => false
		);
		
		if (!empty($poll_id))
		{
			$poll_answer = $this->Crank_model->get_entry_by_data("sp_poll_answers", true, 'current', array('id' => $answer_id));
			
			$this->load->model('Poll_model');
			
			if ($this->Poll_model->update_poll($answer_id, ++$poll_answer['count']))
			{							
				
				$this->input->set_cookie(array(
					'name'  => 'poll_'.$poll_id, 
					'value' => $poll_id,
					'expire' => '31536000'
				));								
				
				$data['result'] = true;
				$data['response'] = $this->Crank_model->get_all_entries("sp_poll_answers", array('poll_id' => $poll_id), 0, false, 'id', 'asc', array('sp_poll_answers' => array('id', 'count')));
				
			}
			
		}
		
		echo json_encode($data);		
		
	}
	
	function get_tags()
	{
	
		$entry = $this->input->post('entry');
		
		$this->load->model("Project_model");
		
		$tags = $this->Crank_model->get_all_entries(
			"sp_".$entry,
			array(),
			0,
			false,
			'id',
			'asc',
			array("sp_".$entry => array('tags')),
			array(),
			false,
			array(),
			true
		);
		
		$tags_arr = array();
		
		$response = "<tags>";				
		$hidden = "<span style='display:none;'>";
		
		if (!empty($tags))
		{			
			foreach ($tags as $tag)
			{
				foreach ($tag as $localtag)
				{
					$parse_tags = explode(',', $localtag);
					foreach ($parse_tags as $parse_tag)
					{		
						if (!empty($parse_tag)) array_push($tags_arr, trim($parse_tag));
					}					
				}				
			}											
			
			$tags_arr = $this->rec_assoc_shuffle(array_unique($tags_arr));
			
			$i = 0;
			
			foreach ($tags_arr as $tag)
			{
				$response .= "<a href='javascript:tag_search($i);' class='tag_search'>".$tag."</a>";
				$hidden .= "<span id='$i' class='tag_search'>".$tag."</span>";
				if ($i > 15) break; else $i++;
			}
		}
		$hidden .= "</span>";
		$response .= "</tags>";
		
		echo json_encode(array('response' => $response, 'hidden' => $hidden));
	}
	
	function rec_assoc_shuffle($array)
	{
	  $ary_keys = array_keys($array);
	  $ary_values = array_values($array);
	  shuffle($ary_values);
	  foreach($ary_keys as $key => $value) {
		if (is_array($ary_values[$key]) AND $ary_values[$key] != NULL) {
		  $ary_values[$key] = rec_assoc_shuffle($ary_values[$key]);
		}
		$new[$value] = $ary_values[$key];
	  }
	  return $new;
	}
	
	function get_monthes()
	{
		echo json_encode(array('response' => $this->params['lang']['month']));
	}
	
	function check_email()
	{
		$data = array(
			'result' => true
		);				
		
		$this->load->model('User_model');
		
		if ($this->User_model->get_user_by_data(array('email'=>$this->input->post('email')), true))
		{
			$data['result'] = false;
			$data['msg']    = $this->params['lang']['filed_signup'];
		}
		
		echo json_encode($data);
	}	
	
}

/* End of file main.php */
/* Location: ./application/controllers/main.php */