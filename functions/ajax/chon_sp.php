<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$type = $_GET['type'];
	$pro = $_GET['pro'];

	if (!isset($_SESSION['xay_dung']) || !empty($_SESSION['xay_dung'])) {
		$_SESSION['xay_dung'][$type] = $pro;
	} else {
		$check = 0;
		foreach ($_SESSION['xay_dung'] as $k => $v) {
			if ($k == $type) {
				$_SESSION['xay_dung'][$k] = $pro;
				$check = 1;
			}
		}

		if ($check == 0) {
			$_SESSION['xay_dung'][$type] = $pro;
		}
	}

	$product = $action->getDetail('product', 'product_id', $pro);

	$img_sp = '/images/'.$product['product_img'];
    if (empty($product['product_img'])) {
        $img_1 = explode("d=", $product['product_img_1']);
        $img_sp = 'https://docs.google.com/uc?export=view&id='.$img_1[1];
    }
?>
<img src="<?= $img_sp ?>">