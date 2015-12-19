<?php
	// Holds data like $baseUrl etc.
	include 'config.php';

	$requestUrl = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];

	$requestString = substr($requestUrl, strlen($baseUrl));

	$urlParams = explode('?', $requestString);

	$controllerName = strtolower(array_shift($urlParams));
	$actionName
	exit($actionName);

	// Here you should probably gather the rest as params

	// Call the action
	$controller = new $controllerName;
	$controller->$actionName();
?>