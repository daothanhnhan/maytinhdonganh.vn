<?php 

    $action_product = new action_product(); 

    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';



    $rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);

    $row1 = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);

    $_SESSION['productcat_id_relate'] = $row1[$nameColIdProductCat_product];

    $_SESSION['sidebar'] = 'productDetail';

    $arr_id = $row1['productcat_ar'];

    $arr_id = explode(',', $arr_id);

    $productcat_id = (int)$arr_id[0];

    $product_breadcrumb = $action_product->getProductCatLangDetail_byId($productcat_id, $lang);

    $breadcrumb_url = $product_breadcrumb['friendly_url'];

    $breadcrumb_name = $product_breadcrumb['lang_productcat_name'];

    $use_breadcrumb = true;



    $img_sub = json_decode($row1['product_sub_img']);

    $cau_hoi = $action->getList('faqs', '', '', 'id', 'asc', '', '', '');

    $action_product->views($row1['product_id']);

    $action_product->da_xem($row1['product_id']);
// var_dump($_SESSION['da_xem']);
    $cs_ban_hang = $action->getDetail('page', 'page_id', 58);
    $cs_giao_hang = $action->getDetail('page', 'page_id', 59);

    $img_ctsp = '/images/'.$row1['product_img'];
    if (empty($row1['product_img'])) {
        $img_1 = explode("d=", $row1['product_img_1']);
        $img_ctsp = 'https://docs.google.com/uc?export=download&id='.$img_1[1]; 
    }
?>

<?php 

    $action_lang = new action_lang();

    $url_lang = $action_lang->get_url_lang_productDetail($slug, $lang);

?>

<script type="text/javascript">
    $(document).ready(function (data) {

        $('.btn_addCart').click(function () {

            var product_id = $('#product_id').val();

            var product_name = $('#product_name').val();

            var product_price = $('#product_price').val();

            var product_quantity = $('.number_cart').val();

            var action = "add";

            if (product_quantity > 0)

            {

                $.ajax({

                    url: "/functions/ajax.php?action=add_cart",

                    method: "POST",

                    dataType: "json",

                    data: {

                        product_id: product_id,

                        product_name: product_name,

                        product_price: product_price,

                        product_quantity: product_quantity,

                        action: action

                    },

                    success: function (data)

                    {

                        // if (confirm(
                        //         'Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không'
                        //         )) {

                            window.location = '/gio-hang';

                        // } else {

                        //     location.reload();

                        // }

                    },

                    error: function () {

                        alert('loi');

                    }

                });



            } else

            {

                alert("Mời bạn nhập số lượng sản phẩm");

            }

        });

    });
</script>

<script type="text/javascript">
    $(document).ready(function (data) {

        $('.btn_addCart_gh').click(function () {

            var product_id = $('#product_id').val();

            var product_name = $('#product_name').val();

            var product_price = $('#product_price').val();

            var product_quantity = $('.number_cart').val();

            var action = "add";

            if (product_quantity > 0)

            {

                $.ajax({

                    url: "/functions/ajax.php?action=add_cart",

                    method: "POST",

                    dataType: "json",

                    data: {

                        product_id: product_id,

                        product_name: product_name,

                        product_price: product_price,

                        product_quantity: product_quantity,

                        action: action

                    },

                    success: function (data)

                    {

                        // if (confirm(
                        //         'Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không'
                        //         )) {

                        //     window.location = '/gio-hang';

                        // } else {

                            location.reload();

                        // }

                    },

                    error: function () {

                        alert('loi');

                    }

                });



            } else

            {

                alert("Mời bạn nhập số lượng sản phẩm");

            }

        });

    });
</script>

<script type="text/javascript">
    $(document).ready(function (data) {

        $('.btn_addCart_trg').click(function () {

            var product_id = $('#product_id').val();

            var product_name = $('#product_name').val();

            var product_price = $('#product_price').val();

            var product_quantity = $('.number_cart').val();

            var action = "add";

            if (product_quantity > 0)

            {

                $.ajax({

                    url: "/functions/ajax.php?action=add_cart",

                    method: "POST",

                    dataType: "json",

                    data: {

                        product_id: product_id,

                        product_name: product_name,

                        product_price: product_price,

                        product_quantity: product_quantity,

                        action: action

                    },

                    success: function (data)

                    {

                        // if (confirm(
                        //         'Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không'
                        //         )) {

                            window.location = '/mua-tra-gop';

                        // } else {

                        //     location.reload();

                        // }

                    },

                    error: function () {

                        alert('loi');

                    }

                });



            } else

            {

                alert("Mời bạn nhập số lượng sản phẩm");

            }

        });

    });
</script>

<link rel="stylesheet" href="/plugin/slickNav/slicknav.css" />

<link rel="stylesheet" href="/plugin/slick/slick.css" />

<link rel="stylesheet" href="/plugin/slick/slick-theme.css" />
<style>
    .act-pro .fa {
        font-size: 14px;
    }
</style>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_MPTOTO_0001.php";?>

<div class="gb-chitiet_sanpham_mptoto">

    <div class="gb-chitiet_sanpham_mptoto-body">

        <div class="container">

            <div class="gb-chitiet_sanpham_mptoto-left">



                <!--chi titest sản phẩm-->

                <div class="row">

                    <div class="col-md-5">

                        <div class="gb-chitiet_sanpham_MPTOTO_left-img">

                            <div class="uni-single-car-gallery-images">

                                <div class="slider slider-for">
                                    <div class="slide-item">

                                        <img src="<?= $img_ctsp ?>" alt="" class="img-responsive img1"
                                            data-zoom-image="<?= $img_ctsp ?>">

                                    </div>

                                    <?php 

                                        $d = 0;

                                        foreach ($img_sub as $item) {

                                            $d++;

                                            $image = json_decode($item, true);

                                    ?>

                                    <div class="slide-item">

                                        <img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive img1"
                                            data-zoom-image="/images/<?= $image['image'] ?>">

                                    </div>

                                    <?php } ?>

                                </div>

                                <div class="slider slider-nav">

                                    <div class="slide-item">

                                        <img src="<?= $img_ctsp ?>" alt="" class="img-responsive img1"
                                            data-zoom-image="<?= $img_ctsp ?>">

                                    </div>

                                    <?php 

                                        $d = 0;

                                        foreach ($img_sub as $item) {

                                            $d++;

                                            $image = json_decode($item, true);

                                    ?>

                                    <div class="slide-item">

                                        <img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive img1"
                                            data-zoom-image="/images/<?= $image['image'] ?>">

                                    </div>

                                    <?php } ?>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="col-md-7">

                        <div class="gb-chitiet_sanpham_MPTOTO_left-info">

                            <h1 class="product_title entry-title"><?= $rowLang['lang_product_name'] ?></h1>
                            <?php include_once DIR_PRODUCT.'MS_PRODUCT_0004.php';?>
                            <p>Lượt xem: <?= $row1['product_views'] ?></p>
                            <!-- .description -->

                            <div class="description">

                                <p>+ <strong>Mã sản phẩm</strong>: <?= $row1['product_code'] ?></p>
                                <p>+ <strong>Thông tin khuyến mại</strong>: <?= $row1['product_sub_info3'] ?></p>
                                <!-- <p>+ <strong>Giới thiệu sản phẩm</strong>: <?= $row1['product_sub_info2'] ?></p> -->
                                <p>+ <strong>Bảo hành</strong>: <?= $row1['product_shape'] ?></p>
                                <p>+ <strong>Tình trạng</strong>: <?= $row1['product_stock']==0 ? 'Hết hàng' : 'Còn hàng' ?></p>

                            </div>

                        <!--     <div class="description">
                                <p><strong>Chính sách bán hàng</strong>: <?= str_replace("\r\n", "<br>", $cs_ban_hang['page_des']) ?></p>
                                <p><strong>Chính sách giao hàng</strong>: <?= str_replace("\r\n", "<br>", $cs_giao_hang['page_des']) ?></p>
                            </div> -->

                            <!--ENTRY PRICE-->

                            <?php include DIR_PRODUCT."MS_PRODUCT_MPTOTO_0002.php";?>

                            <div class="gb-divider"></div>

                            <!--CART-->

                            <?php include DIR_CART."MS_CART_MPTOTO_0003.php";?>

                            <div class="gb-divider"></div>

                            <!--SHARE-->

                            <?php include DIR_CHARACTERISTICS."MS_CHARACTERISTICS_MPTOTO_0001.php";?>



                        </div>

                    </div>

                </div>



                <!--THÔNG SỐ VÀ MÔ TẢ-->

                <div class="gb-thongso-mota">

                    <div class="uni-shortcode-tabs-default">

                        <div class="uni-shortcode-tab-3">

                            <div class="tabbable-panel">

                                <div class="tabbable-line">

                                    <ul class="nav nav-tabs ">

                                        <li class="active">

                                            <a href="#tab_default_32" data-toggle="tab">Mô tả sản phẩm</a>

                                        </li>
                                        <li class="">

                                            <a href="#tab_default_36" data-toggle="tab">Thông số kỹ thuật</a>

                                        </li>
                                        <li class="">

                                            <a href="#tab_default_33" data-toggle="tab">Câu hỏi thường gặp</a>

                                        </li>
                                        <li class="">

                                            <a href="#tab_default_34" data-toggle="tab">Đánh giá</a>

                                        </li>
                                        <li class="">

                                            <a href="#tab_default_35" data-toggle="tab">Video</a>

                                        </li>

                                    </ul>

                                    <div class="tab-content">

                                        <div class="tab-pane active" id="tab_default_32">
                                            <?php 
                                            $info2 = explode("d=", $rowLang['lang_product_sub_info2']);
                                            ?>
                                            <!-- <iframe src="https://docs.google.com/document/d/<?= $info2[1] ?>/edit#heading=h.gjdgxs&embedded=true" style="width: 100%;height: 1000px;"></iframe> -->
                                            <!-- <iframe src="https://docs.google.com/spreadsheets/d/13R8O15c_sZKZT2QRHom1z2SDA3E1O5chUvROnqHCkwE/pubhtml?widget=true&amp;headers=true" style="width:100%;height:100%;"></iframe> -->
                                            <!-- <iframe src="https://drive.google.com/viewerng/viewer?url=http://docs.google.com/fileview?id=0B5ImRpiNhCfGZDVhMGEyYmUtZTdmMy00YWEyLWEyMTQtN2E2YzM3MDg3MTZh&hl=en&pid=explorer&efh=false&a=v&chrome=false&embedded=true" frameborder="0"></iframe> -->
                                            <iframe src="https://docs.google.com/viewer?srcid=<?= $info2[1] ?>&pid=explorer&efh=false&a=v&chrome=false&embedded=true" width="100%" height="480px"></iframe>
                                            <img src="" alt="">
                                        </div>
                                        <div class="tab-pane " id="tab_default_36" style="overflow-x: scroll;">
                                            <?php 
                                            $thong_so = explode("d=", $rowLang['lang_product_content']);
                                            $thong_so_img = 'https://docs.google.com/uc?export=download&id='.$thong_so[1];
                                            ?>
                                            <!-- <img src="<?= $thong_so_img ?>" alt=""> -->
                                            <iframe src="https://docs.google.com/viewer?srcid=<?= $thong_so[1] ?>&pid=explorer&efh=false&a=v&chrome=false&embedded=true" width="100%" height="480px"></iframe>
                                        </div>
                                        <div class="tab-pane" id="tab_default_33">

                                            <div class="column mcb-column mcb-item-7c2699f45 one column_faq">
                                                <div class="faq">
                                                    <h4 class="title">CÂU HỎI THƯỜNG GẶP</h4>
                                                    <div class="mfn-acc faq_wrapper  open1st">
                                                        <?php 
                                                        $d = 0;
                                                        foreach ($cau_hoi as $item) { 
                                                            $d++;
                                                        ?>
                                                        <div class="question">
                                                            <div class="title"><span class="num"><?= $d ?></span><i
                                                                    class="icon-plus acc-icon-plus"></i><i
                                                                    class="icon-minus acc-icon-minus"></i><?= $item['name'] ?>
                                                            </div>
                                                            <div class="answer" style=""><?= str_replace("\r\n", "<br>", $item['note']) ?></div>
                                                        </div>
                                                        <?php } ?>
                                                    
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="tab-pane" id="tab_default_34">

                                            <?php include_once DIR_PRODUCT.'MS_PRODUCT_0014.php'; ?>

                                        </div>

                                        <div class="tab-pane" id="tab_default_35">
                                            <?php 
                                            $video = explode("v=", $rowLang['lang_product_sub_info1']);//var_dump($video);
                                            ?>
                                            
                                            <iframe width="560" height="315" src="https://www.youtube.com/embed/<?= $video[1] ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                <!--bình luận-->

                <?php include DIR_EMAIL."MS_EMAIL_MPTOTO_0002.php";?>

                <!--realte product-->

                <?php include DIR_PRODUCT."MS_PRODUCT_MPTOTO_0009.php";?>

                <?php include DIR_PRODUCT."MS_PRODUCT_MPTOTO_0020.php";?>



            </div>

        </div>

    </div>

</div>



<script src="/plugin/slick/scripts.js"></script>

<script src="/plugin/slick/slick.js"></script>

<script src="/plugin/slickNav/jquery.slicknav.js"></script>



<div id="fb-root"></div>

<script>
    (function (d, s, id) {

        var js, fjs = d.getElementsByTagName(s)[0];

        if (d.getElementById(id)) return;

        js = d.createElement(s);
        js.id = id;

        js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";

        fjs.parentNode.insertBefore(js, fjs);

    }(document, 'script', 'facebook-jssdk'));
</script>



<script type="text/javascript">
    $(document).ready(function () {

        $('.slider-for').slick({

            slidesToShow: 1,

            slidesToScroll: 1,

            speed: 500,

            arrows: false,

            fade: true,

            asNavFor: '.slider-nav'

        });

        $('.slider-nav').slick({

            slidesToShow: 4,

            slidesToScroll: 1,

            speed: 500,

            asNavFor: '.slider-for',

            dots: false,

            focusOnSelect: true,

            slide: 'div'

        });

    });
</script>
<script>
    var acc = document.getElementsByClassName("title");
    var i;

    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function () {
            this.classList.toggle("active");
            var panel = this.nextElementSibling;
            if (panel.style.display === "block") {
                panel.style.display = "none";
            } else {
                panel.style.display = "block";
            }
        });
    }
</script>
<style>
    
</style>