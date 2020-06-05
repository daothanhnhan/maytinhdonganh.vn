<?php 
	// var_dump($_SESSION['shopping_cart']);
	// var_dump($_SESSION['xay_dung']);
	foreach ($_SESSION['xay_dung'] as $item) {
		$product = $action->getDetail('product', 'product_id', $item);
		
		$check = 0;
        foreach ($_SESSION["shopping_cart"] as $shop) {
        	if ($product['product_id'] == $shop['product_id']) {
        		$check = 1;
        	}

        }

        if ($check == 0) {
        	$item_array = array(  
                    'product_id'               =>     $product["product_id"],  
                    'product_name'             =>     $product["product_name"],  
                    'product_price'            =>     $product["product_price"],  
                    'product_quantity'         =>     1  
                  );  
                  $_SESSION["shopping_cart"][] = $item_array;
        }
	}
	unset($_SESSION['xay_dung']);
	header('location: /gio-hang');
?>