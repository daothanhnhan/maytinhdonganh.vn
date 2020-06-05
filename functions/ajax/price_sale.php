<?php
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";
	$action = new action();

	$code = $_GET['code'];

	$sale = $action->getDetail('code_sale', 'code', $code);


	// var_dump($_SESSION['shopping_cart']);
	$tong = 0;
	foreach ($_SESSION['shopping_cart'] as $item) {
		$tong += $item['product_price'] * $item['product_quantity'];
	}

	$sale_price = 0;
	if (!empty($sale)) {
		if ($sale['money'] != 0) {
			$sale_price = $sale['money'];
		} else {
			$sale_price = $tong*$sale['percent']/100;
		}
	}

	// echo $sale_price;
	if ($sale_price != 0) { 
?>
<table class="table">
    <thead>
      <tr>
        <th>Chiết khấu</th>
        <th>Giá khuyến mãi</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><?= number_format($sale_price) ?> VNĐ</td>
        <td><?= number_format($tong - $sale_price) ?> VNĐ</td>
      </tr>
    </tbody>
  </table>
  <?php } ?>