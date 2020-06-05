<?php 
	session_start();
	$sort = $_GET['sort'];
	if ($sort == 'default') {
		$_SESSION['sort_price_xd'] = 'default';
	}
	if ($sort == 'cu') {
		$_SESSION['sort_price_xd'] = 'cu';
	}
	if ($sort == 'price_asc') {
		$_SESSION['sort_price_xd'] = 'price_asc';
	}
	if ($sort == 'price_desc') {
		$_SESSION['sort_price_xd'] = 'price_desc';
	}
?>