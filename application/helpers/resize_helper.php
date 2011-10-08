<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('image_convert'))
{
	function image_convert($im,$size,$ext,$path_to,$direction = 'height')
	{			
		
		$unique_name = md5(microtime()).'.'.$ext;

		$ox = imagesx($im);
		$oy = imagesy($im);
				
		if ($direction == 'height')
		{
			$ny = $size;
			$nx = floor($ox * ($size / $oy));
			if (($nx > 125) && ($size < 125)) $nx = 125;
		}
		if ($direction == 'width')
		{
			$nx = $size;
			$ny = floor($oy * ($size / $ox));
		}
		
		$nm = imagecreatetruecolor($nx, $ny);
		
		imagecopyresized($nm, $im, 0,0,0,0,$nx,$ny,$ox,$oy);
		
		
		imagejpeg($nm, $path_to . $unique_name);
		
		
		return $unique_name;
	}
}


/* End of file resize_helper.php */
/* Location: ./system/application/helpers/resize_helper.php */