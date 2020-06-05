<?php 
	session_start();
	$idkv = $_GET['idkv'];
	$idpc = $_GET['idpc'];
	$num = $_GET['num'];
	
	$arr_idpc = array();
	foreach ($_SESSION['pre_cart'] as $k => $item) {
		$arr_idpc[] = $item['idpc'];
		if ($idpc == $item['idpc']) {
			$_SESSION['pre_cart'][$k]['idkv'] = $idkv;
			$_SESSION['pre_cart'][$k]['num'] = $num;
		}
	}
	
	
	////////////////////
	include_once dirname(__FILE__)."/../database.php";
	include_once dirname(__FILE__)."/../library.php";
	include_once dirname(__FILE__)."/../pagination/Pagination.php";
	// include_once dirname(__FILE__)."/../action_kiotviet.php";
	include_once dirname(__FILE__)."/../action.php";
	$action = new action();
?>