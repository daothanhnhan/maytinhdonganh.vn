<?php 
	session_start();
	$sort = $_GET['sort'];
	if ($sort == 'default') {
		$_SESSION['sort_price'] = 'default';
	}
	if ($sort == 'cu') {
		$_SESSION['sort_price'] = 'cu';
	}
	if ($sort == 'price_asc') {
		$_SESSION['sort_price'] = 'price_asc';
	}
	if ($sort == 'price_desc') {
		$_SESSION['sort_price'] = 'price_desc';
	}
?>