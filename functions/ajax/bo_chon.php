<?php 
	session_start();

	$type = $_GET['type'];

	unset($_SESSION['xay_dung'][$type]);
?>