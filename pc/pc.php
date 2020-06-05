<?php 
  session_start();
  require_once dirname(__FILE__) . '/../functions/database.php';
  require_once dirname(__FILE__) . "/../functions/library.php";
  require_once dirname(__FILE__) . '/../functions/pagination/Pagination.php';
  require_once dirname(__FILE__) . "/../functions/action.php";
  // require_once dirname(__FILE__) . '/../functions/action_kiotviet.php';
  // $kiotviet = new action_kiotviet();
  $action = new action();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Cấu hình pc</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Bảng báo giá thiết bị</h2>
  <p>Ngày báo giá: <?= date('d-m-Y H:i') ?></p>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>STT</th>
        <th>Tên sản phẩm</th>
        <th>Số lượng</th>
        <th>Giá</th>
        <th>Tổng</th>
      </tr>
    </thead>
    <tbody>
      <?php 
      $d = 0;
      $total = 0;
      foreach ($_SESSION['shopping_cart'] as $item) {
        $d++;
        $product = $action->getDetail('product', 'product_id', $item['product_id']);
        $total += $item['product_price']*$item['product_quantity'];
      ?>
      <tr>
        <td><?= $d ?></td>
        <td><?= $item['product_name'] ?></td>
        <td><?= $item['product_quantity'] ?></td>
        <td><?= number_format($item['product_price']) ?> đ</td>
        <td><?= number_format($item['product_price']*$item['product_quantity']) ?> đ</td>
      </tr>
      <?php } ?>
      <tr>
        <td colspan="3"></td>
        <td>Tổng tiền</td>
        <td><?= number_format($total) ?> đ</td>
      </tr>
    </tbody>
  </table>
</div>
<div style="text-align: center;">
  <a href="/gio-hang" title="">Quay về giỏ hàng</a> |
  <a title="" onclick="window.print();" target="_blank">In đơn hàng</a>
</div>

</body>
</html>
