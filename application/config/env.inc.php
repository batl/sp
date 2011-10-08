<?php
/*
* Production config file
*/

//ini_set('display_errors', 0);
//error_reporting(E_ALL ^ E_NOTICE);

/* APC TTL in seconds*/

$config['webhost'] = 'sp.loc';

/* Site base url WITH trailing slash */
$config['base_url'] = "http://{$config['webhost']}/";

/* Base locations for statics */
$config['img_base'] = "http://{$config['webhost']}/static/images/";
$config['css_base'] = "http://{$config['webhost']}/static/css/";
$config['js_base'] = "http://{$config['webhost']}/static/js/";

/* Config DB Location */
$config['config_db'] = 'localhost';