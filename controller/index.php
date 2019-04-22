<?php
$route=isset($_GET['r']) ? $_GET['r'] : NULL;

set_include_path(get_include_path() . PATH_SEPARATOR . '../');

IF($route)
{
	$partials = explode("/",route);
	if(count($partials)!=2)
	{
		die('invalid route');
	}
	$filename=$partials[0];
	$function_name=$partials[1];
	if(!file_exists('../controller/' . $filename . '.php'))
	{
		die('error route');
	}
	include('controller/' . $filename . '.php');
	if(!function_exists($function_name))
	{
		die('error route');
	}
	$function_name();
}

?>