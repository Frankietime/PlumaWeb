<?php
	require('ConnectionString/connection.php');
	$query = 'SELECT * from lamparas';
	$result = mysqli_query($link, $query);
	$rows = array();
	while($r = mysqli_fetch_assoc($result)) {
	    $rows[] = $r;
	}
	print json_encode($rows);
	mysqli_close($link);
?>