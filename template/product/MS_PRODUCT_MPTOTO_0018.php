<?php 

	$home_pro_luxury = $action_product->getProductCatDetail_byId(471,$lang);

	$img_sub_luxury = json_decode($home_pro_luxury['productcat_sub_img1']);//var_dump($img_sub);

	// $home_pro_luxury_sub = $action_product->getProductCat_byProductCatIdParent_Limit(471, 'desc', 40);
	 $home_pro_luxury_sub = $action_product->getListProductNew_hasLimit(40);

?>
<div class="title-block">
    <h3 class="saleb-icon"><a href="" title=""
            style="color: black;">Sản phẩm mới</a></h3>
    <ul>
    </ul>
</div>
<div class="wrapper-pro clearfix">
    <div class="row">
        <?php 
        
        foreach ($home_pro_luxury_sub as $item) { 

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
<script>
$(document).ready(function(){
    $('.add-sosanh input').click(function () {

        var id = $(this).attr('data-id');



        if ($(this).is(":checked")) {

            $.post('/compare/add', {
                id: id
            }, function (data) {

                var obj = jQuery.parseJSON(data);

                var status = obj.status;

                var size = obj.size;

                if (status == 'full') {

                    $('.popupcontent').load('/compare/index/?status=full');

                    $('input[data-id=' + id + ']').prop('checked', false);

                } else {

                    $('.popupcontent').load('/compare/');

                }

                if (size > 0) {

                    $('.popupbg').fadeIn();

                    $('.popupcontent').fadeIn();

                }

            });

        } else {

            $.post('/compare/remove', {
                id: id
            }, function (data) {



            });

        }

    });

    $('.popupbg').click(function () {

        $('.popupbg').fadeOut();

        $('.popupcontent').fadeOut();

    });



    $(document).on('click', '.remove-compare', function () {

        var id = $(this).attr('data-id');

        $.post('/compare/remove', {
            id: id
        }, function (data) {

            var obj = jQuery.parseJSON(data);

            var size = obj.size;

            $('.compare_wapper td[data-id=' + id + ']').remove();

            if (size < 1) {

                $('.popupbg').fadeOut();

                $('.popupcontent').fadeOut();

            }

            $('input[data-id=' + id + ']').prop('checked', false);

        });

    });
});

</script>