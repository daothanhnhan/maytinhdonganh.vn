<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$tong = 0;
	foreach ($_SESSION['xay_dung'] as $item) {
		$product = $product = $action->getDetail('product', 'product_id', $item);
		if ($product['product_price_sale'] == 0) {
			$tong += $product['product_price'];
		} else {
			$tong += $product['product_price_sale'];
		}
	}
	echo number_format($tong);
?>