<?php
	require('ConnectionString/connection.php');
	mysqli_set_charset($link, "utf8");
	$cuchillosQuery = 'SELECT * from cuchillos';
	$cuchillosResult = mysqli_query($link, $cuchillosQuery);
	$cuchillosRows = array();
	while($r = mysqli_fetch_assoc($cuchillosResult)) {
	    $cuchillosRows[] = $r;
	}
	print json_encode($cuchillosRows);
	mysqli_close($link);
?>