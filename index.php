<?php

    session_start();

    ob_start();

    $actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

    $folder = dirname(__FILE__);

    include_once('config.php');

    include_once('__autoload.php');

    $action = new action();

    include_once dirname(__FILE__).DIR_FUNCTIONS."database.php";  

    include_once dirname(__FILE__).DIR_FUNCTIONS_PAGING."pagination.php";

    include_once 'functions/phpmailer/class.smtp.php';

    include_once 'functions/phpmailer/class.phpmailer.php';

    include_once "functions/vi_en.php";

    include_once "functions/nganLuong/config.php";
    include_once "functions/nganLuong/NL_Checkoutv3.php";



    // Install MultiLanguage

    include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE."lang_config.php";

    include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE.$lang_file;

    // Install Friendly Url

    include_once dirname(__FILE__).DIR_FUNCTIONS_URL."url_config.php";

    // Configure Website

    include_once dirname(__FILE__).DIR_FUNCTIONS."website_config.php";

    // echo $translate['link_contact'];die;

    $trang = isset($_GET['trang']) ? $_GET['trang'] : '1';

    $action = new action();

    $cart = new action_cart();

    $menu = new action_menu();

    $action_product = new action_product();

    $action_news = new action_news();

// echo phpversion();die;

    $rowConfig = $action->getDetail('config','config_id',1);

?>



<!doctype html>

<html lang="en">

<head>

    <!-- start - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->

    <meta charset="UTF-8">
    <meta name="google-site-verification" content="A1-VqPs8RZcIg8tp-y_m9QNhCNBVVvZ5agTFgE8kPH8" />
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- cần cấu hình linh hoạt -->

    <meta name="description" content="<?= $meta_des ?>">

    <!-- cần cấu hình linh hoạt -->

    <meta name="keywords" content="<?= $meta_key ?>">

    <meta id="meta_topic_id" property="og:id" content="1139">



    <?php 

    if ($urlAnalytic == 'product_languages' && isset($_GET['page'])) { 

      $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

      $rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);

      $row = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);

    ?>

    <meta property="og:image" content="<?= $action->curPageURL() ?>/images/<?= $row['product_img'] ?>" />

    <?php } ?>

    <!-- cần cấu hình linh hoạt -->

    <title><?= $title ?></title>

    <!-- cần cấu hình linh hoạt -->

    <link rel="icon" href="/images/<?= $rowConfig['icon_web'] ?>" type="image/gif" sizes="16x16">



    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap.css">

    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap-theme.css">

    <link rel="stylesheet" href="/plugin/fonts/font-awesome/css/font-awesome.min.css">

    <script src="/plugin/jquery/jquery-2.0.2.min.js"></script>

    <script src="/plugin/bootstrap/js/bootstrap.js"></script>

    <!-- <link rel="stylesheet" href="/css/style.css"> -->

    <link rel="stylesheet" type="text/css" href="/css/locsanpham.css">
    <link rel="stylesheet" type="text/css" href="/css/category_line.css">
    
    <link rel="stylesheet" type="text/css" href="/css/maihoang.css">
  
    <link rel="stylesheet" type="text/css" href="/css/style-mptoto.css">
  <link rel="stylesheet" type="text/css" href="/css/respon.css">
    <script type='text/javascript' src='//c.trazk.com/c.js' async='async'> </script>

    <!-- end - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->

    <!-- Google Tag Manager -->

    <script>
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start':

                    new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],

                j = d.createElement(s),
                dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =

                'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);

        })(window, document, 'script', 'dataLayer', 'GTM-WTL33WN');
    </script>

    <!-- End Google Tag Manager -->

    <!-- Facebook Pixel Code -->

    <script>
        ! function (f, b, e, v, n, t, s)

        {
            if (f.fbq) return;
            n = f.fbq = function () {
                n.callMethod ?

                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };

            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = '2.0';

            n.queue = [];
            t = b.createElement(e);
            t.async = !0;

            t.src = v;
            s = b.getElementsByTagName(e)[0];

            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',

            'https://connect.facebook.net/en_US/fbevents.js');

        fbq('init', '419200471951138');

        fbq('track', 'PageView');
    </script>

    <noscript><img height="1" width="1" style="display:none"
            src="https://www.facebook.com/tr?id=419200471951138&ev=PageView&noscript=1" /></noscript>

    <!-- End Facebook Pixel Code -->

<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5eccb0638ee2956d73a49261/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<style>
    .fb_dialog {
        bottom: 146px !important;
    }
    .fb_customer_chat_bounce_in_v2 {
        bottom: 74px !important;
    }
</style>
</head>



<body>

    <!-- Google Tag Manager (noscript) -->

    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WTL33WN" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>

    <!-- End Google Tag Manager (noscript) -->

<div class="zallo">
    <a href="http://zaloapp.com/qr/p/fwnrgujo02q2"><img src="images/zaaalo.png" alt=""></a>
</div>

<a href="tel:0983966661" class="suntory-alo-phone suntory-alo-green" id="suntory-alo-phoneIcon" style="left: 0px; bottom: 0px;">
  <div class="suntory-alo-ph-circle"></div>
  <div class="suntory-alo-ph-circle-fill"></div>
  <div class="suntory-alo-ph-img-circle"><i class="fa fa-phone"></i></div>
</a>
<!-- Load Facebook SDK for JavaScript -->

   <div id="fb-root"></div>

   <script>

    window.fbAsyncInit = function() {

     FB.init({

      xfbml      : true,

      version     : 'v7.0',

     });

    };



    (function(d, s, id) {

    var js, fjs = d.getElementsByTagName(s)[0];

    if (d.getElementById(id)) return;

    js = d.createElement(s); js.id = id;

    js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);

   }(document, 'script', 'facebook-jssdk'));</script>



   <!-- Your customer chat code -->

   <div class="fb-customerchat"

    attribution=setup_tool

    page_id="105032191165034"

 theme_color="#0084ff"

 logged_in_greeting="Xin chào! Tôi có thể giúp gì cho ban?"

 logged_out_greeting="Xin chào! Tôi có thể giúp gì cho ban?">

   </div>


    <!--HEADER-->

    <?php include_once dirname(__FILE__).DIR_THEMES."header.php"; ?>



    <!--CONTENT-->

    <div class="gb-content">

        <?php

    if (isset($_GET['page'])){

        

        $urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang);    

        // echo $urlAnalytic;
        if ($urlAnalytic != 'productcat_languages') {
            $_SESSION['attribute'] = array();
            unset($_SESSION['price_min']);
            unset($_SESSION['price_max']);
            unset($_SESSION['sort_price']);
            // var_dump($_SESSION['attribute']);
        }

        if ($urlAnalytic != 'xay-dung-cau-hinh') {
            $_SESSION['attribute_xd'] = array();
            unset($_SESSION['sort_price_xd']);
        }

        switch ($urlAnalytic) {

          case 'newscat_languages':

                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;

            case 'tin-tuc':

                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;

            case 'news_languages':               

                include_once dirname(__FILE__).DIR_THEMES."chitiettintuc.php"; break;

            case 'servicecat_languages':

                include_once dirname(__FILE__) . DIR_THEMES . "dichvu.php";break;

            case 'service_languages':

                include_once dirname(__FILE__) . DIR_THEMES . "chitiet_dichvu.php";break;

            case 'page_language':

                include_once dirname(__FILE__) . DIR_THEMES . "gioithieu.php";break;

            case 'productcat_languages':              

                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'products':              

                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'san-pham':              

                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'product_languages':

                include_once dirname(__FILE__).DIR_THEMES."chitietsanpham.php"; break;  

            // start - chưa hoàn thiện - url địa chỉ trang website

            case 'gio-hang':               

                include_once dirname(__FILE__).DIR_THEMES."giohang.php"; break;            

            case 'thanh-toan':           

                include_once dirname(__FILE__).DIR_THEMES."thanhtoan1.php"; break;

            case 'xac-nhan-don-hang':           

                include_once dirname(__FILE__).DIR_THEMES."xacnhandonhang.php"; break;

            case 'huy-don-hang':           

                include_once dirname(__FILE__).DIR_THEMES."huydonhang.php"; break;

            case 'contact':           

                include_once dirname(__FILE__).DIR_THEMES."lienhe.php"; break;

            case 'lien-he':

                include_once dirname(__FILE__).DIR_THEMES."lienhe.php"; break;

            case 'search-news':

                include_once dirname(__FILE__) . DIR_THEMES . "search-news.php";break;

            case 'search-product':

                include_once dirname(__FILE__) . DIR_THEMES . "search-product.php";break;

            case 'search-service':

                include_once dirname(__FILE__) . DIR_THEMES . "search-service.php";break;

            case 'register':

                include_once dirname(__FILE__) . DIR_THEMES . "dang-ky.php";break;

            case 'login':

                include_once dirname(__FILE__) . DIR_THEMES . "dang-nhap.php";break;

            case 'logout':

                include_once dirname(__FILE__) . DIR_THEMES . "dang-xuat.php";break;

            case 'forget-pass':

                include_once dirname(__FILE__) . DIR_THEMES . "forget-pass.php";break;

            case 'change-password':

                include_once dirname(__FILE__) .DIR_THEMES . "change-password.php";break;

            case 'thong-tin-ca-nhan':

                include_once dirname(__FILE__) .DIR_THEMES . "user-profile.php";break;

            case 'update-infor':

                include_once dirname(__FILE__) .DIR_THEMES . "update-infor.php";break;

            case 'cart-detail':

                include_once dirname(__FILE__) .DIR_THEMES . "cart-detail.php";break;

            case 'price':

                include_once dirname(__FILE__) .DIR_THEMES . "price.php";break;

            case 'danh-muc-san-pham':

                include_once dirname(__FILE__) .DIR_THEMES . "danhmusanpham.php";break;

            case 'set-link':

                include_once dirname(__FILE__) . DIR_THEMES . "set_link.php";break;

            case 'dong-san-pham123':

                include_once dirname(__FILE__) . DIR_THEMES . "dongsanpham.php";break;
            case 'xay-dung-cau-hinh':

                include_once dirname(__FILE__) . DIR_THEMES . "cauhinh.php";break;
            case 'check-serial':

                include_once dirname(__FILE__) . DIR_THEMES . "serial.php";
                break;

            case 'dang-nhap':
                include_once dirname(__FILE__) . DIR_THEMES . "dangnhap.php";break;

            case 'dang-ky':
                include_once dirname(__FILE__) . DIR_THEMES . "dangnhap.php";break;

            case 'dang-xuat':
                include_once dirname(__FILE__) . DIR_THEMES . "dangxuat.php";break;

            case 'thong-tin-tai-khoan':
                include_once dirname(__FILE__) . DIR_THEMES . "user-profile.php";break;

            case 'don-hang':
                include_once dirname(__FILE__) .DIR_THEMES . "cart.php";break;
            case 'chi-tiet-don-hang':
                include_once dirname(__FILE__) .DIR_THEMES . "cart-detail.php";break;

            case 'doi-mat-khau':
                include_once dirname(__FILE__) . DIR_THEMES . "doi-mat-khau.php";break;

            case 'thong-tin-bao-hanh':
                include_once dirname(__FILE__) . DIR_THEMES . "thong-tin-bao-hanh.php";break;

            case 'finish':
                include_once dirname(__FILE__) . DIR_THEMES . "finish.php";break;

            case 'mua-tra-gop':
                include_once dirname(__FILE__) . DIR_THEMES . "mua-tra-gop.php";break;

            case 'search':
                include_once dirname(__FILE__) . DIR_THEMES . "search.php";break;

            case 'xay-dung-cau-hinh-pc':
                include_once dirname(__FILE__) . DIR_THEMES . "xay-dung-cau-hinh-pc.php";break;

            // end - chưa hoàn thiện - url địa chỉ trang website

        }

    }

    else {
        $_SESSION['attribute'] = array();
        unset($_SESSION['price_min']);
        unset($_SESSION['price_max']);
        unset($_SESSION['sort_price']);

        $_SESSION['attribute_xd'] = array();
        unset($_SESSION['sort_price_xd']);
            
        include_once dirname(__FILE__).DIR_THEMES."home.php";
    }
    ?>

    </div>

    <div class="social-button">

        <!-- <div class="social-button-content">

       <a href="tel:<?= $rowConfig['content_home3'] ?>" class="call-icon" rel="nofollow">

          <i class="fa fa-whatsapp" aria-hidden="true"></i>

          <div class="animated alo-circle"></div>

          <div class="animated alo-circle-fill  "></div>

           <span>Hotline: <?= $rowConfig['content_home3'] ?></span>

        </a>

    </div> -->



        <!-- <a class="user-support">

      <i class="fa fa-user-circle-o" aria-hidden="true"></i>

      <div class="animated alo-circle"></div>

      <div class="animated alo-circle-fill"></div>

    </a> -->

    </div>

    <!--FOOTER-->

    <div class="gb-footer">

        <?php include_once dirname(__FILE__).DIR_THEMES."footer.php"; ?>



    </div>

    <script type="text/javascript" src="/functions/language/lang.js"></script>
    
    <!--Start of Tawk.to Script-->

    <script type="text/javascript">
        var Tawk_API = Tawk_API || {},
            Tawk_LoadStart = new Date();

        (function () {

            var s1 = document.createElement("script"),
                s0 = document.getElementsByTagName("script")[0];

            s1.async = true;

            s1.src = 'https://embed.tawk.to/5ad6f10e227d3d7edc240e6b/default';

            s1.charset = 'UTF-8';

            s1.setAttribute('crossorigin', '*');

            s0.parentNode.insertBefore(s1, s0);

        })();
    </script>

    <!--End of Tawk.to Script-->



    <script>
        $(document).ready(function () {

            $('.user-support').click(function (event) {

                $('.social-button-content').css('display', 'inline-grid');

            });

        });
    </script>

    <div class="gb-article-share-box" style="display: none;">

        <div class="button-container">

            <div class="like-button">

                <iframe
                    src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2F119HoangQuocViet%2F&width=71&layout=box_count&action=like&size=large&show_faces=true&share=true&height=65&appId=220693348668109"
                    width="71" height="95" style="border:none;overflow:hidden" scrolling="no" frameborder="0"
                    allowTransparency="true" allow="encrypted-media"></iframe>

            </div>

        </div>



        <div class="button-container">

            <div class="mail-button">

                <a href="mailto:<?= $rowConfig['content_home2'] ?>">

                    <i class="fa fa-envelope" aria-hidden="true"></i>

                </a>

            </div>

        </div>



        <div class="button-container">

            <div class="like-button1">

                <script type="text/javascript" src="https://apis.google.com/js/plusone.js" gapi_processed="true">
                </script>

                <div id="___plusone_0"
                    style="text-indent: 0px; margin: 0px; padding: 0px; background: transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 71px; height: 24px;">
                    <iframe ng-non-bindable="" frameborder="0" hspace="0" marginheight="0" marginwidth="0"
                        scrolling="no"
                        style="position: static; top: 0px; width: 71px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 24px;"
                        tabindex="0" vspace="0" width="100%" id="I1_1534574329005" name="I1_1534574329005"
                        src="https://apis.google.com/u/0/se/0/_/+1/fastbutton?usegapi=1&amp;data-size=tall&amp;data-href=0%2F&amp;origin=https%3A%2F%2Fkidoasa.com&amp;url=https%3A%2F%2Fkidoasa.com%2F&amp;gsrc=3p&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.en_US.FttmFHLbbVw.O%2Fam%3DwQ%2Frt%3Dj%2Fd%3D1%2Frs%3DAGLTcCOzbWftz_oq-nYBDNKBVNyVqz-g0g%2Fm%3D__features__#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;id=I1_1534574329005&amp;_gfid=I1_1534574329005&amp;parent=https%3A%2F%2Fkidoasa.com&amp;pfname=&amp;rpctoken=24519637"
                        data-gapiattached="true" title="G+"></iframe></div>

            </div>

        </div>

    </div>



    <!-- <script type="text/javascript" src="http://www.trungtamtinhoc.edu.vn/api/snowstorm.js"></script> -->



</body>



</html>