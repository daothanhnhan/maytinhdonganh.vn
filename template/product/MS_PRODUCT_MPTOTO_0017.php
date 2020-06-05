<?php 

	// $home_pro_luxury = $action_product->getProductCatDetail_byId(500,$lang);

	// $img_sub_luxury = json_decode($home_pro_luxury['productcat_sub_img1']);
  // $clear = $action_product->getProductList_byMultiLevel_orderProductId(500, 'desc', 1, 16, '');//var_dump($msxcn);

  $clear = $action->getList('product', 'clear_stock', '1', 'product_id', 'desc', '', '16', '');
?>
<div class="title-block">
  <h3 class="saleb-icon"><a href="" title=""
      style="color: black;">Sản phẩm Clear Stock</a></h3>
  <ul>
    <li><a href="/cpu-bo-vi-xu-ly">CPU - Bộ vi xử lý</a></li>
    <li><a href="/main-bo-mach-chu">MAIN - Bo mạch chủ</a></li>
    <li><a href="/ram-bo-nho-trong">RAM - Bộ nhớ trong</a></li>
  </ul>
</div>
<div class="wrapper-pro clearfix">
  <div class="row">
    <?php 
    foreach ($clear as $item) { 
      $img_sp = '/images/'.$item['product_img'];
      if (empty($item['product_img'])) {
          $img_1 = explode("d=", $item['product_img_1']);
          $img_sp = 'https://docs.google.com/uc?export=download&id='.$img_1[1];
      }
    ?>

    <div class="col-sm-3 pro-item ">


      <div class="pro-img">
        <a href="/<?= $item['friendly_url'] ?>">
          <img src="<?= $img_sp ?>" alt="<?= $item['product_name'] ?>">
        </a>
      </div>
      <div class="light-bottom"></div>
      <h2>
        <a href="/<?= $item['friendly_url'] ?>" title="<?= $item['product_name'] ?>"
          rel="bookmark"><?= $item['product_name'] ?>
        </a></h2>
     <?php if ($item['product_price_sale']==0) { ?>
                <p class="pro-price"><?= number_format($item['product_price']) ?> VNĐ</p>
            <?php }else{ ?>
            <p class="pro-price">[HOT] <?= number_format($item['product_price_sale']) ?> VNĐ</p>
            <?php } ?>
      <div class="act-pro">
        <?php if ($item['product_price_sale']==0) { ?>
        <a onclick="load_url('<?= $item['product_id'] ?>', '<?= $item['product_name'] ?>', '<?= $item['product_price'] ?>')">
        <?php } else { ?>
        <a onclick="load_url('<?= $item['product_id'] ?>', '<?= $item['product_name'] ?>', '<?= $item['product_price_sale'] ?>')">
        <?php } ?>
          <i class="iconcart"></i>
          <span class="fa fa-cart-plus" data-id="6278"> Thêm vào giỏ hàng</span>
        </a>
        <!-- <span class="add-sosanh">
          <input type="checkbox" data-id="6278"><span>So sánh</span>
        </span> -->
      </div>

      <!-- tooltip -->
      <div class="info-tooltippro tooltip" style="display: none;">
        <div class="headertooltip">
          <p class="titles"><?= $item['product_name'] ?></p>
          <?php if ($item['product_price_sale']==0) { ?>
          <p class="prices"><?= number_format($item['product_price']) ?> VNĐ</p>
          <?php } else { ?>
          <p class="prices"><?= number_format($item['product_price_sale']) ?> VNĐ</p>
          <p class="prices"><del><?= number_format($item['product_price']) ?> VNĐ</del></p>
          <?php } ?>
          <p>Bảo hành: <?= $item['product_shape'] ?></p>
        </div>
        <div class="bodytooltip">
          <p><?= $item['product_des'] ?></p>
        </div>
        <div class="footertooltip">
        </div>
      </div>
      <!-- tooltip -->
    </div>
    <?php } ?>
  </div>
</div>