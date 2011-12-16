<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('sub_text'))
{
	function sub_text($text,$maxwords = 5, $maxchar = 25) {		
		$words = explode(' ',$text);
		$text='';
		foreach ($words as $word) {
			if (mb_strlen($text.' '.$word)<$maxchar) {
				$text.=' '.$word;
			}
			else {
				$text.='...';
				break;
			}
		}
		return $text;
	}
}


/* End of file resize_helper.php */
/* Location: ./system/application/helpers/resize_helper.php */