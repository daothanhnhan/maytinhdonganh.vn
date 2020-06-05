<?php 
	session_start();
	include_once dirname(__FILE__)."/../database.php";
	include_once dirname(__FILE__)."/../library.php";
	include_once dirname(__FILE__)."/../pagination/Pagination.php";
	// include_once dirname(__FILE__)."/../action_kiotviet.php";
	include_once dirname(__FILE__)."/../action.php";
	$action = new action();
	// $kiotviet = new action_kiotviet();
	if (!empty($_SESSION['pre_cart'])) {
		$phi = 0;
		foreach ($_SESSION['pre_cart'] as $item){
			$product = $action->getDetail('product', 'product_id', $item['idkv']);
			if ($product['product_price_sale'] == 0) {
				$phi += $product['product_price']*$item['num'];
			} else {
				$phi += $product['product_price_sale']*$item['num'];
			}
			
		} 
		echo number_format($phi);
		// echo '2';
	} else {
		echo '0';
	}
?>