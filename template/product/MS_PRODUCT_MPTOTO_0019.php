<?php 

	$home_pro_luxury1 = $action_product->getProductCatDetail_byId(469,$lang);

	$img_sub_luxury = json_decode($home_pro_luxury['productcat_sub_img1']);//var_dump($img_sub);

	// $home_pro_luxury_sub = $action_product->getProductCat_byProductCatIdParent_Limit(471, 'desc', 40);
    //  $home_pro_luxury_sub = $action_product->getListProductNew_hasLimit(40);
     $product_hot = $action_product->getListProductHot_hasLimit(40);

?>

<div class="title-block">
    <h3 class="hotb-icon"><a href="" title=""
            style="color: black;">Sản phẩm bán chạy</a></h3>
    <ul>
        <li><a href="/cpu-bo-vi-xu-ly">CPU - Bộ vi xử lý</a></li>
        <li><a href="/main-bo-mach-chu">MAIN - Bo mạch chủ</a></li>
        <li><a href="/ram-bo-nho-trong">RAM - Bộ nhớ trong</a></li>
        <li><a href="/vga-card-man-hinh">VGA - Card màn hình</a></li>
    </ul>
</div>

<div class="wrapper-pro clearfix">
    <div class="row">
        <?php 

        foreach ($product_hot as $item) { 

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
                    <i class="fa fa-cart-plus"></i>
                    <span class="quick-buy" data-id="6278">Thêm vào giỏ hàng</span>
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


<!-- <script>
    $(document).ready(function (e) {
        var w_tooltip = $(".tooltip").width();;
        var h_tooltip = 0;
        var pad = 10;
        var x_mouse = 0;
        var y_mouse = 0;
        var wrap_left = 0;
        var wrap_right = 0;
        var wrap_top = 0;
        var wrap_bottom = 0;

        $(".pro-item .pro-img").mousemove(function (e) {
            wrap_left = $(this).parent().parent().offset().left;
            wrap_top = $(this).parent().parent().offset().top;
            wrap_bottom = $(this).parent().parent().offset().top + $(this).parent().parent().parents(
                ".product_list").height();
            x_mouse = e.pageX - $(this).offset().left;
            y_mouse = e.pageY - $(this).offset().top;
            h_tooltip = $(this).parent().children(".tooltip").height();
            $(".tooltip").hide();


            //Move Horizontal
            if ($(this).offset().left - pad - w_tooltip > wrap_left) {
                $(this).parent().children(".tooltip").css("left", 0 - (w_tooltip + pad) + x_mouse);
            } else {
                $(this).parent().children(".tooltip").css("left", pad + x_mouse + 20);
            }

            //Move Vertical		
            if (e.pageY + h_tooltip >= $(window).height() + $(window).scrollTop()) {
                $(this).parent().children(".tooltip").css("top", y_mouse - h_tooltip - pad)
            } else {
                $(this).parent().children(".tooltip").css("top", pad + y_mouse + 20);
            }
            //Show tooltip	
            $(this).parent().children(".tooltip").show();
        });

        $(".pro-item .pro-img").mouseout(function () {
            $(".tooltip").hide();
        });


        $('.menunav .input_search').keyup(function () {
            var name = $(this).val();
            $.post('/suggest/', {
                name: name
            }, function (data) {
                $('.auto_suggest').html(data);
            });
        });




        $(".footer_hotro > h3").click(function () {
            $(".hotrotructuyen_box_footer").toggle();
        });

    });
</script> -->