<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">

<div class="gb-home-product gb-home-product-relate product-home">

    <div class="titleCategoryProduct_mptoto">SẢN PHẨM LIÊN QUAN</div>

    <div class="wrapper-pro clearfix row">

        <?php

            $action_relative = new action_product();

            $list_pro_relative = $action_relative->getListProductRelate_byIdCat_hasLimit($productcat_id, 4);

            foreach ($list_pro_relative as $item) {

                $rowLang1 = $action_relative->getProductLangDetail_byId($item['product_id'],$lang);

                $row1 = $action_relative->getProductDetail_byId($item['product_id'],$lang); 

                $img_sp = '/images/'.$row1['product_img'];
                if (empty($row1['product_img'])) {
                    $img_1 = explode("d=", $row1['product_img_1']);
                    $img_sp = 'https://docs.google.com/uc?export=download&id='.$img_1[1];
                }

        ?>
       
            <div class="pro-item col-md-3">
                <div class="pro-img">
                <a href="/<?= $rowLang1['friendly_url'] ?>"><img src="<?= $img_sp ?>"
                                alt="" class="img-responsive"></a>
                </div>
                <div class="light-bottom"></div>
                <h2><a href="/<?= $rowLang1['friendly_url'] ?>" title="<?= $rowLang1['lang_product_name'] ?>" rel="bookmark"><?= $rowLang1['lang_product_name'] ?></a></h2>
                <?php if ($row1['product_price_sale']==0) { ?>
                <p class="pro-price"><?= number_format($row1['product_price']) ?> VNĐ</p>
                <?php }else{ ?>
                <p class="pro-price">[HOT] <?= number_format($row1['product_price_sale']) ?> VNĐ</p>
                <?php } ?>
                <div class="act-pro">
                    <?php if ($row1['product_price_sale']==0) { ?>
                    <a onclick="load_url('<?= $row1['product_id'] ?>', '<?= $row1['product_name'] ?>', '<?= $row1['product_price'] ?>')">
                    <?php } else { ?>
                    <a onclick="load_url('<?= $row1['product_id'] ?>', '<?= $row1['product_name'] ?>', '<?= $row1['product_price_sale'] ?>')">
                    <?php } ?>
                        <i class="fa fa-cart-plus"></i>
                        <span class="quick-buy" data-id="1743">Thêm vào giỏ hàng</span>
                    </a>
                    <!-- <span class="add-sosanh">
                        <input type="checkbox" data-id="1743"><span>So sánh</span>
                    </span> -->
                </div>
                <div class="info-tooltippro tooltip" style="left: 142.5px; top: 113px; display: none;">
                    <div class="headertooltip">
                        <p class="titles"><?= $rowLang1['lang_product_name'] ?></p>
                        <p class="prices"><?= number_format($row1['product_price']) ?> VNĐ</p>
                    </div>
                    <div class="bodytooltip">
                        <p><?= $rowLang1['lang_product_des'] ?></p>
                    </div>
                    <div class="footertooltip">
                    </div>
                </div>
            </div>

       

        <?php } ?>

    </div>

</div>



<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>
    $(document).ready(function () {

        var owl = $('.gb-home-product-relate-slide');

        owl.owlCarousel({

            loop: true,

            margin: 30,

            navSpeed: 500,

            nav: true,

            dots: false,

            autoplay: true,

            rewind: true,

            navText: [],

            responsive: {

                0: {

                    items: 1

                },

                767: {

                    items: 2

                },

                992: {

                    items: 4

                }

            }

        });

    });
</script>