<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once(APPPATH.'controllers/admin/crank.php');

class Upload extends Crank {

	const MAX_IMG_SIZE = 10144;
	
	public function __construct()
	{
		parent::__construct();	
		
		if (empty($this->params['admin_id'])) redirect($this->params['base'].'login');				
						
	}	
		
	public function index($entry, $sub_entry, $size, $direction)
	{
		if ($entry != 'index')
		{
			
			if ($sub_entry != 'undefined')
			{
				if (is_dir('static/images/entries/'.$entry.'/'.$sub_entry))
					$entry .= '/'.$sub_entry; 				
			}
			
			if ($size == 'undefined') $size = 600;
			
			if ($direction == 'undefined') $direction = 'height';
							
			$file_name = $_FILES['userfile']['name'];
			$file_size = $_FILES['userfile']['size'];
			$tmp_name  = $_FILES['userfile']['tmp_name'];						
			
			if(isset($file_name)) 
			{
				
				$filename = stripslashes($file_name);
				$extension = strtolower($this->getExtension($filename));
								
				if (($extension != "jpg") && ($extension != "jpeg") && ($extension != "png") && ($extension != "gif")) 
				{
					$result = array('error' => 'Unknown Image extension. Only jpg, jpeg, png, and gif files are permitted');
					exit(json_encode($result));
				}
				
				if(preg_match('/[.](jpg)$/', $file_name)) 
				{
					$im = imagecreatefromjpeg($tmp_name);
				} 
				else if (preg_match('/[.](gif)$/', $file_name)) 
				{
					$im = imagecreatefromgif($tmp_name);
				}
				else if (preg_match('/[.](png)$/', $file_name)) 
				{
					$im = imagecreatefrompng($tmp_name);
				}								
				
				if (!empty($im))
				{
					
					$status = true;
					
					$height = imagesy($im);				
							
				
					if (isset($height) && $height>$size)
					{
						$this->load->helper('resize_helper');
												
						$photo_url = image_convert($im,$size,$extension,$_SERVER['DOCUMENT_ROOT'].'/static/images/entries/'.$entry.'/big/', $direction);
						$trumb_url = image_convert($im,100,$extension,$_SERVER['DOCUMENT_ROOT'].'/static/images/entries/'.$entry.'/small/', $direction);
						
					}
					else
					{									
						$photo_url = md5(microtime()).'.'.$extension;
						if (!copy($tmp_name,$_SERVER['DOCUMENT_ROOT'].'/static/images/entries/'.$entry.'/big/'.$photo_url))
						{
							$this->data['result_message']['text'] = "<p>Error, can't upload file.</p>";
							$this->data['result_message']['type'] = false;							
							$status = false;
						}
						else
						{
							$this->load->helper('resize_helper');
							$trumb_url = image_convert($im,100,$extension,$_SERVER['DOCUMENT_ROOT'].'/static/images/entries/'.$entry.'/small/', $direction);
						}
					}
					
					if (!$status) 
					{
						$result = array('error' => 'Internal Copy Error. Please Contact webmaster@anyart.com');
						exit(json_encode($result));
					}
					else
					{
						// calculate size of preview image								
						$result = array('result' 	=> 'success', 
										'big_url' 	=> 'static/images/entries/'.$entry.'/big/'.$photo_url,
										'small_url' => 'static/images/entries/'.$entry.'/small/'.$trumb_url
									   );

						exit(json_encode($result));
					}
				}
				else				
				{
					$result = array('error' => 'No Image Found');
					exit(json_encode($result));
				}
																		
			}
			else
			{
				$result = array('error' => 'Undefined entry!');
				exit(json_encode($result));
			}
		}
	}	

	function getExtension($str) 
    {
        $i = strrpos($str,".");
        if (!$i) return "";
        $l = strlen($str) - $i;
        $ext = substr($str,$i+1,$l);
        return $ext;
	}
	
}

/* End of file upload.php */
/* Location: ./application/controllers/upload.php */