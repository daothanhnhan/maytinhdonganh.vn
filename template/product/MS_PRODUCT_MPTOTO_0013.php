<?php 

    if (!isset($_SESSION['sort_price'])) {

        $_SESSION['sort_price'] = 'default';

    }

    if (!isset($_SESSION['attribute'])) {
        $_SESSION['attribute'] = array();
    }

    if (!isset($_SESSION['sort_num'])) {

        $_SESSION['sort_num'] = 12;

    }

    ///////////////////////////////

    if (!isset($_SESSION['history'])) {

        $_SESSION['history'] = $_GET['page'];

    } else {

        if ($_SESSION['history'] == $_GET['page']) {



        } else {

            // $_SESSION['brand'] = "";

            // $_SESSION['material'] = "";

            // $_SESSION['price']['max'] = "";

            // $_SESSION['price_filter'] = "";

            $_SESSION['history'] = $_GET['page'];

            $_SESSION['attribute'] = array();
            unset($_SESSION['price_min']);
            unset($_SESSION['price_max']);
            unset($_SESSION['sort_price']);
        }

    }

?>



<?php 

    $action = new action();

    $action_product = new action_product();                                                                                

    if (isset($_GET['slug']) && $_GET['slug'] != '') {

        $slug = $_GET['slug'];

        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);

        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang[$nameColIdProductCat_productCatLanguage],$lang);

        $issub = $action_product->getListProductCatSub($slug, $lang);

        // echo $issub;

        if($rowCat['productcat_parent'] != 0 || $issub == 0){

            $rows_all = $action_product->getProductList_byMultiLevel_orderProductId_all($rowCat[$nameColId_productCat],'desc',$trang,'',$slug);
            $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat[$nameColId_productCat],'desc',$trang,'',$slug);//$_SESSION['sort_num']

        }else if($issub != 0 && $rowCat['productcat_parent'] != 0){

            $rows_all = $action_product->getProductList_byMultiLevel_orderProductId_all($rowCat[$nameColId_productCat],'desc',$trang,'',$slug);
            $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat[$nameColId_productCat],'desc',$trang,'',$slug);

            $rowListCat = $action_product->getproductCat_byproductCatIdParent($rowCatLang['productcat_id'],'asc');

        }else{

            $rows = $action_product->getproductCat_byproductCatIdParent($rowCatLang['productcat_id'],'asc');

        }

    }else{

        $rows = $action->getList($nameTable_product,'','',$nameColId_product,'desc',$trang,$_SESSION['sort_num'],'san-pham');

        

    }

    $_SESSION['sidebar'] = 'productCat';







    $_SESSION['search_productcat_id'] = $rowCatLang['productcat_id']; 

    if($issub == 0){
        $thuoc_tinh_1 = $action_product->get_list_attribute($rows_all);//var_dump($thuoc_tinh_1);
        $rows = $action->list_product_bycat($rows, $trang, $_GET['page'], 20);
    }

    if($issub != 0 && $rowCat['productcat_parent'] != 0){
        $thuoc_tinh_1 = $action_product->get_list_attribute($rows_all);//var_dump($thuoc_tinh_1);
        $rows = $action->list_product_bycat($rows, $trang, $_GET['page'], 20);
    }

    
    // print_r($_SESSION['sort_price']);
    // unset($_SESSION['price_min']);
    // unset($_SESSION['price_max']);

?>

<?php include DIR_BANNER."MS_BANNER_MPTOTO_0005.php";?>

<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_MPTOTO_0001.php";?>

<input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">

<input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">

<?php 

    $action_lang = new action_lang();

    $url_lang = $action_lang->get_url_lang_productcat($slug, $lang);

?>



<div class="gb-page-sanpham_mptoto">

    <div class="container">

        <div class="row">

            <?php

                if($rowCat['productcat_parent'] != 0|| $issub == 0){

            ?>

            <!-- Hiển thị danh sách sản phẩm -->

            <div class="col-md-12" id="productContainer">

                <div class="row">

                    <div class="col-sm-4">

                        <div class="product-filtertab">

                            <div class="tabbable-panel">

                                <div class="tabbable-line">

                                    <ul class="nav nav-tabs ">

                                        <li class="active">

                                            <a href="#tab_default_1" data-toggle="tab"><i class="fa fa-th"
                                                    aria-hidden="true"></i> </a>

                                        </li>

                                        <li>

                                            <a href="#tab_default_2" data-toggle="tab"><i class="fa fa-list"
                                                    aria-hidden="true"></i> </a>

                                        </li>

                                    </ul>



                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="col-sm-8">

                        <div class="product-filtertab">

                            <?php //include DIR_SEARCH."MS_SEARCH_MPTOTO_0002.php";?>

                        </div>

                    </div>
                    <div class="col-md-12">
                    <div class="loc-san-pham-wrapper">
				<div class="loc-box">
					<div class="loc1"> 
						<ul>
                            <?php 
                            foreach ($thuoc_tinh_1 as $tt) { 
                                $name_tt = $action->getDetail('thuoc_tinh', 'id', $tt['name']);//var_dump($name)
                            ?>
    						<li><a><?= $name_tt['name'] ?><span>+</span></a>
                            <ul>
                                <?php 
                                foreach ($tt['value'] as $tt_v) {
                                    $value_tt = $action->getDetail('thuoc_tinh_value', 'id', $tt_v); 
                                ?>
                                <li><a onclick="attribute('<?= $tt['name'] ?>', '<?= $tt_v ?>')"><?= $value_tt['name'] ?></a></li>
                                <?php } ?>
                            </ul>
                            <?php } ?>
                        </ul>
					</div>
					<div class="loc2">
												<div class="sort_select">
							<span>Kiểu lọc <span class="icon_dropdown"></span></span>							<ul>
								<li><a href="#" rel="nofollow">Đầy đủ tiêu chí</a> </li>
								<li><a href="#" rel="nofollow">Một trong những tiêu chí</a> </li>
							</ul>
													</div>
						
												<div class="sort_select">
							<span>Sắp xếp sản phẩm <span class="icon_dropdown"></span> </span>							<ul>
								<li><a rel="nofollow" onclick="sort_price('default')">Mới nhất</a> </li>
								<li><a rel="nofollow" onclick="sort_price('cu')">Cũ nhất</a> </li>
								<li><a rel="nofollow" onclick="sort_price('price_asc')">Giá: thấp -&gt; cao</a> </li>
								<li><a rel="nofollow" onclick="sort_price('price_desc')">Giá: cao -&gt; thấp</a> </li>
							</ul>
													</div>
						
												<div class="sort_select">
							<span>Giá thấp nhất <span class="icon_dropdown"></span> </span>							<ul>
								<li><a onclick="price_min(0)" rel="nofollow">0</a> </li>
								<li><a onclick="price_min(100000)" rel="nofollow">100.000</a> </li>
								<li><a onclick="price_min(200000)" rel="nofollow">200.000</a> </li>
								<li><a onclick="price_min(500000)" rel="nofollow">500.000</a> </li>
								<li><a onclick="price_min(1000000)" rel="nofollow">1.000.000</a> </li>
								<li><a onclick="price_min(2000000)" rel="nofollow">2.000.000</a> </li>
								<li><a onclick="price_min(5000000)" rel="nofollow">5.000.000</a> </li>
								<li><a onclick="price_min(8000000)" rel="nofollow">8.000.000</a> </li>
								<li><a onclick="price_min(10000000)" rel="nofollow">10.000.000</a> </li>
							</ul>
						</div>
						
						
						
												<div class="sort_select">
							<span>Giá cao nhất <span class="icon_dropdown"></span> </span>							<ul>
								<li><a onclick="price_max(1000000)" rel="nofollow">1.000.000</a> </li>
								<li><a onclick="price_max(2000000)" rel="nofollow">2.000.000</a> </li>
								<li><a onclick="price_max(5000000)" rel="nofollow">5.000.000</a> </li>
								<li><a onclick="price_max(8000000)" rel="nofollow">8.000.000</a> </li>
								<li><a onclick="price_max(10000000)" rel="nofollow">10.000.000</a> </li>
								<li><a onclick="price_max(12000000)" rel="nofollow">12.000.000</a> </li>
								<li><a onclick="price_max(15000000)" rel="nofollow">15.000.000</a> </li>
								<li><a onclick="price_max(20000000)" rel="nofollow">20.000.000</a> </li>
								<li><a onclick="price_max(25000000)" rel="nofollow">25.000.000</a> </li>
								<li><a onclick="price_max(30000000)" rel="nofollow">30.000.000</a> </li>
								<li><a onclick="price_max(50000000)" rel="nofollow">50.000.000</a> </li>
								<li><a onclick="price_max(100000000)" rel="nofollow">100.000.000</a> </li>
							</ul>
						</div>
						
						
						<div class="view_sp_grid_line">
													<a href="?viewstyle=line" rel="nofollow">
								<span class="iconview-line "></span>
							</a>
							<a href="?viewstyle=grid" rel="nofollow">						
								<span class="iconview-grid active"></span>
							</a>
												</div>
						
					</div>
                    
				</div>
				<div class="list-attribute" style="clear: both;text-align: right;font-size: 12px;">
                    <?php 
                    foreach ($_SESSION['attribute'] as $item) { 
                        $tt_v = $action->getDetail('thuoc_tinh_value', 'id', $item);
                        $tt_n = $action->getDetail('thuoc_tinh', 'id', $tt_v['thuoc_tinh_id']);
                    ?>
                    <span><b><?= $tt_n['name'] ?></b>: <a onclick="attribute('<?= $tt_v['thuoc_tinh_id'] ?>', '<?= $item ?>')"><?= $tt_v['name'] ?> [X]</a></span>
                    <?php } ?>
                </div>
								
			</div>
                    </div>

                </div>



                <div class="tab-content">

                    <div class="tab-pane active" id="tab_default_1">

                        <div class="product-home danh-muc-page">
                            <div class="wrapper clearfix">
                                <div class="wrapper-pro clearfix row">
                                    <?php 

                                    $d = 0;

                                    foreach ($rows['data'] as $row) {

                                        $d++;

                                        $rowLang1 = $action_product->getProductLangDetail_byId($row['product_id'],$lang);

                                        $row1 = $action_product->getProductDetail_byId($row['product_id'],$lang); 

                                        $img_sp = '/images/'.$row['product_img'];
                                        if (empty($row['product_img'])) {
                                            $img_1 = explode("d=", $row['product_img_1']);
                                            $img_sp = 'https://docs.google.com/uc?export=download&id='.$img_1[1];
                                        }

                                ?>
                                    <div class="col-sm-3 pro-item">
                                        <div class="pro-img">
                                            <a href="/<?= $rowLang1['friendly_url'] ?>">

                                                <img src="<?= $img_sp ?>" alt=""
                                                    class="img-responsive">

                                            </a>
                                        </div>
                                        <div class="light-bottom"></div>
                                        <h2><a href="/<?= $rowLang1['friendly_url'] ?>"
                                                title="<?= $rowLang1['lang_product_name'] ?>"
                                                rel="bookmark"><?= $rowLang1['lang_product_name'] ?></a></h2>
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
                                                <span class="quick-buy" data-id="2078">Thêm vào giỏ hàng</span>
                                            </a>
                                            <!-- <span class="add-sosanh">
                                                <input type="checkbox" data-id="2078"><span>So sánh</span>
                                            </span> -->
                                        </div>

                                        <!-- tooltip -->
                                        <div class="info-tooltippro tooltip" style="display:none;">
                                            <div class="headertooltip">
                                                <p class="titles"><?= $rowLang1['lang_product_name'] ?></p>
                                                <?php if ($row1['product_price_sale']==0) { ?>
                                                <p class="prices"><?= number_format($row1['product_price']) ?> VNĐ</p>
                                                <?php } else { ?>
                                                <p class="prices"><?= number_format($row1['product_price_sale']) ?> VNĐ</p>
                                                <p class="prices"><del><?= number_format($row1['product_price']) ?> VNĐ</del></p>
                                                <?php } ?>
                                                <p>Bảo hành: <?= $row1['product_shape'] ?></p>
                                            </div>
                                            <div class="bodytooltip">
                                                <p><?= $row['product_des'] ?></p>
                                            </div>
                                            <div class="footertooltip">
                                            </div>
                                        </div>
                                        <!-- tooltip -->
                                    </div>
                                    <?php } ?>
                                </div>


                            </div>
                        </div>

                    </div>

                    <div class="tab-pane" id="tab_default_2">

                        <div class="product-home danh-muc-page">
                            <div class="wrapper clearfix">
                                <div class="wrapper-pro clearfix">
                                    <?php 

                                        $d = 0;

                                        foreach ($rows['data'] as $row) {

                                            $d++;

                                            $rowLang1 = $action_product->getProductLangDetail_byId($row['product_id'],$lang);

                                            $row1 = $action_product->getProductDetail_byId($row['product_id'],$lang); 

                                            $img_sp = '/images/'.$row['product_img'];
                                            if (empty($row['product_img'])) {
                                                $img_1 = explode("d=", $row['product_img_1']);
                                                $img_sp = 'https://docs.google.com/uc?export=download&id='.$img_1[1];
                                            }

                                        ?>
                                    <div class="pro-item-catline">
                                        <div class="pro-img" data-id="2078">
                                            <a href="/<?= $rowLang1['friendly_url'] ?>">

                                                <img src="<?= $img_sp ?>" alt=""
                                                    class="img-responsive">

                                            </a>
                                        </div>
                                        <div class="pro-thumb-list">
                                            <div class="tiny-img">
                                                <div class="tiny-img-wrapper clearfix">
                                                    <div class="citem" data-id="2078"><img
                                                            src="<?= $img_sp ?>"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pro-desc">
                                            <h2><a href="/<?= $rowLang1['friendly_url'] ?>"
                                                    title="<?= $rowLang1['lang_product_name'] ?>"
                                                    rel="bookmark"><?= $rowLang1['lang_product_name'] ?></a></h2>
                                            <p class="pro-price"><?= number_format($row1['product_price']) ?> VNĐ</p>
                                            <p>Mã hàng: <?= $row1['product_code'] ?></p>
                                            <p>Bảo hành: <?= $row1['product_shape'] ?></p>
                                            <p>Hãng sản xuất: <?= $row1['product_expiration'] ?></p>
                                            <p>Xuất xứ: <?= $row1['product_material'] ?></p>
                                            <div class="pro-store">
                                                <p><b>Đang còn hàng tại:</b></p>
                                                <p></p>
                                            </div>
                                        </div>
                                        <div class="pro-info">
                                            <ul>
                                                <li><b>Nhà sản xuất : </b>DXRacer</li>
                                            </ul>
                                        </div>
                                        <div class="add-to-catline">
                                            <span class="addcatline quick-buy" data-id="2078">
                                                Cho vào giỏ hàng
                                            </span>
                                            <span class="add-sosanh">
                                                <input type="checkbox" data-id="2078"><span>So sánh</span>
                                            </span>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>

                        </div>

                    </div>

                    <?php include DIR_PAGINATION."MS_PAGINATION_MPTOTO_0001.php";?>

                </div>

                <?php

                }else if($issub != 0 && $rowCat['productcat_parent'] != 0){

            ?>

                <!-- Hiển thị danh sách sản phẩm và Danh mục sản phẩm Cấp 2 - Có Lọc tìm kiếm-->

                <div class="col-md-12">

                    <div class="filter-header">

                        <h2 class="loc-tim-kiem">LỌC TÌM KIẾM</h2>

                        <div class="row">

                            <?php

                                foreach ($rowListCat as $row) {

                                    $row_product_cat = $action_product->getProductCatDetail_byId($row['productcat_id'], $lang);

                            ?>

                            <div class="col-md-4">

                                <a href="/<?= $row_product_cat['friendly_url'] ?>" style="color: blue;">

                                    <?= $row_product_cat['productcat_name'] ?>

                                </a>

                            </div>

                            <?php } ?>

                        </div>

                    </div>

                    <div class="row">

                        <div class="col-sm-4">

                            <div class="product-filtertab">

                                <div class="tabbable-panel">

                                    <div class="tabbable-line">

                                        <ul class="nav nav-tabs ">

                                            <li class="active">

                                                <a href="#tab_default_1" data-toggle="tab"><i class="fa fa-th"
                                                        aria-hidden="true"></i> </a>

                                            </li>

                                            <li>

                                                <a href="#tab_default_2" data-toggle="tab"><i class="fa fa-list"
                                                        aria-hidden="true"></i> </a>

                                            </li>

                                        </ul>



                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="col-sm-8">

                            <div class="product-filtertab">

                                <?php include DIR_SEARCH."MS_SEARCH_MPTOTO_0002.php";?>

                            </div>

                        </div>

                    </div>



                    <div class="tab-content" id="productContainer">

                        <div class="tab-pane active" id="tab_default_1">
                            <div class="product-home danh-muc-page">
                                <div class="wrapper clearfix">
                                    <div class="wrapper-pro clearfix row">
                                        <?php 

                                    $d = 0;

                                    foreach ($rows['data'] as $row) {

                                        $d++;

                                        $rowLang1 = $action_product->getProductLangDetail_byId($row['product_id'],$lang);

                                        $row1 = $action_product->getProductDetail_byId($row['product_id'],$lang); 

                                ?>
                                        <div class="col-sm-3 pro-item">
                                            <div class="pro-img">
                                                <a href="/<?= $rowLang1['friendly_url'] ?>">

                                                    <img src="/images/<?= $row1['product_img'] ?>" alt=""
                                                        class="img-responsive">

                                                </a>
                                            </div>
                                            <div class="light-bottom"></div>
                                            <h2><a href="/<?= $rowLang1['friendly_url'] ?>"
                                                    title="<?= $rowLang1['lang_product_name'] ?>"
                                                    rel="bookmark"><?= $rowLang1['lang_product_name'] ?></a></h2>
                                            <p class="pro-price"><?= number_format($row1['product_price']) ?> VNĐ</p>
                                            <div class="act-pro">
                                                <a>
                                                    <i class="iconcart"></i>
                                                    <span class="quick-buy" data-id="2078">Thêm vào giỏ hàng</span>
                                                </a>
                                                <span class="add-sosanh">
                                                    <input type="checkbox" data-id="2078"><span>So sánh</span>
                                                </span>
                                            </div>

                                            <!-- tooltip -->
                                            <div class="info-tooltippro tooltip">
                                                <div class="headertooltip">
                                                    <p class="titles">KÊ TAY - DI CHUỘT DXRACER (AR/02A/N)</p>
                                                    <p class="prices">666,000 VND </p>
                                                </div>
                                                <div class="bodytooltip">
                                                    <p>&nbsp;</p>
                                                </div>
                                                <div class="footertooltip">
                                                </div>
                                            </div>
                                            <!-- tooltip -->
                                        </div>
                                        <?php } ?>
                                    </div>


                                </div>
                            </div>

                        </div>

                        <div class="tab-pane" id="tab_default_2">

                            <?php 

                                $d = 0;

                                foreach ($rows['data'] as $row) {

                                    $d++;

                                    $rowLang1 = $action_product->getProductLangDetail_byId($row['product_id'],$lang);

                                    $row1 = $action_product->getProductDetail_byId($row['product_id'],$lang); 

                            ?>

                            <div class="gb-product-item_mptoto">

                                <div class="row">

                                    <div class="col-sm-4">

                                        <div class="gb-product-item-img">

                                            <div class="gb-product-item-img-main">

                                                <a href="/<?= $rowLang1['friendly_url'] ?>">

                                                    <img src="/images/<?= $row1['product_img'] ?>" alt=""
                                                        class="img-responsive">

                                                </a>

                                            </div>

                                            <div class="gb-product-item-img-replate">

                                                <a href="/<?= $rowLang1['friendly_url'] ?>">

                                                    <?php if (empty($row1['product_img_2'])) { ?>

                                                    <img src="/images/<?= $row1['product_img'] ?>" alt=""
                                                        class="img-responsive">

                                                    <?php } else { ?>

                                                    <img src="/images/<?= $row1['product_img_2'] ?>" alt=""
                                                        class="img-responsive">

                                                    <?php } ?>

                                                </a>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="col-sm-8">

                                        <div class="gb-product-item-img-text">

                                            <h2>

                                                <a href="/<?= $rowLang1['friendly_url'] ?>">

                                                    <?= $rowLang1['lang_product_name'] ?>

                                                </a>

                                            </h2>

                                            <?= $rowLang1['lang_product_des'] ?>

                                            <?php include DIR_PRODUCT."MS_PRODUCT_MPTOTO_0002.php";?>

                                        </div>

                                    </div>

                                </div>

                            </div>

                            <?php } ?>

                        </div>

                    </div>

                    <?php include DIR_PAGINATION."MS_PAGINATION_MPTOTO_0001.php";?>

                </div>

                <?php }else{ ?>

                <!-- Hiển thị danh mục sản phẩm cấp 1 Không có Lọc tìm kiếm -->

                <div class="col-md-12">

                    <?php

                        if($rowCat['productcat_parent'] != 0){

                    ?>

                    <div class="filter-header">

                        <h2 class="loc-tim-kiem">LỌC TÌM KIẾM</h2>

                        <div class="row">

                            <?php

                                    foreach ($rows as $row) {

                                        $row_product_cat = $action_product->getProductCatDetail_byId($row['productcat_id'], $lang);

                                ?>

                            <div class="col-md-2">

                                <a href="/<?= $row_product_cat['friendly_url'] ?>">

                                    <?= $row_product_cat['productcat_name'] ?>

                                </a>

                            </div>

                            <?php } ?>

                        </div>

                    </div>

                    <?php } ?>



                    <div class="gb-productcat_mptoto-item">

                        <div class="gb-productcat_mptoto-title">

                            <h3><?= $rowCat['productcat_name'] ?></h3>

                            <a href="/<?= $rowCat['friendly_url'] ?>" class="btn_xemthem">Xem thêm</a>

                        </div>

                        <div>

                            <?= $rowCat['productcat_content'] ?>

                        </div>

                        <div class="row">

                            <?php
                                $d = 0;
                                foreach ($rows as $row) {
                                    $d++;
                                    $row_product_cat = $action_product->getProductCatDetail_byId($row['productcat_id'], $lang);

                            ?>

                            <div class="col-sm-2">

                                <div class="gb-product-item_mptoto">

                                    <div class="gb-product-item-img">

                                        <div class="gb-product-item-img-main">

                                            <a href="/<?= $row_product_cat['friendly_url'] ?>">

                                                <img src="/images/<?= $row_product_cat['productcat_main_img'] ?>" alt=""
                                                    class="img-responsive">

                                            </a>

                                        </div>

                                        <div class="gb-product-item-img-replate">

                                            <a href="/<?= $row_product_cat['friendly_url'] ?>">

                                                <img src="/images/<?= $row_product_cat['productcat_main_img'] ?>" alt=""
                                                    class="img-responsive">

                                            </a>

                                        </div>

                                    </div>

                                    <div class="gb-product-item-img-text">

                                        <h2>

                                            <a href="/<?= $row_product_cat['friendly_url'] ?>">

                                                <?= $row_product_cat['productcat_name'] ?>

                                            </a>

                                        </h2>

                                        <p><?= $row_product_cat['productcat_des'] ?></p>

                                    </div>

                                </div>

                            </div>

                            <?php 
                            if ($d%6==0) {
                                echo '<hr style="width:100%;border:0;">';
                            }
                        } ?>

                        </div>

                        <?php include DIR_PAGINATION."MS_PAGINATION_MPTOTO_0001.php";?>

                    </div>

                </div>

                <?php } ?>

                <!-- <div class="col-md-3">

                <?php //include DIR_SIDEBAR."MS_SIDEBAR_MPTOTO_0001.php";?>

                <?php //include DIR_SIDEBAR."MS_SIDEBAR_MPTOTO_0006.php";?>

                <?php //include DIR_SIDEBAR."MS_SIDEBAR_MPTOTO_0009.php";?>

                <?php //include DIR_SIDEBAR."MS_SIDEBAR_MPTOTO_0004.php";?>

                <?php //include DIR_SIDEBAR."MS_SIDEBAR_MPTOTO_0007.php";?>

                <?php //include DIR_SIDEBAR."MS_SIDEBAR_MPTOTO_0005.php";?>

            </div> -->

            </div>

        </div>

    </div>
</div>


<style type="text/css" media="screen">
    .loc-tim-kiem {

        font-size: 20px;
        font-weight: 500;
        margin-bottom: 15px;

    }

    .filter-header a {
        color: #333;
        padding-bottom: 10px;
        display: block;
    }

    .filter-header {
        padding-bottom: 20px;
    }
</style>





<script>
    // $("#orderby_2").change(function(){

    //     $(this).attr('data-sort',$(this).val());

    //     var number =  $("#orderby").attr('data-number') ?  $("#orderby").attr('data-number') : '';

    //      var sort = $(this).val();

    //      get_product(0,sort,number)





    // })



    // $("#orderby").change(function(){

    // $(this).attr('data-number',$(this).val());

    // var sort =  $("#orderby_2").attr('data-sort') ?  $("#orderby_2").attr('data-sort') : '';

    // var number = $(this).val();

    //  get_product(0,sort,number)





    // })

    //   function get_product(limit,sort,number){

    //     $.ajax({

    //         url:"/functions/ajax/show.php",

    //         method:"POST",

    //         data:{

    //            limit : limit,

    //            sort : sort,

    //            number : number,

    //         },

    //         success:function(data){

    //             $("#productContainer").html(data);

    //         }

    //     })

    // }
</script>



<script>
    function sort_price(data) {

        // alert(data.value);

        var sort = data;

        var xhttp = new XMLHttpRequest();

        xhttp.onreadystatechange = function () {

            if (this.readyState == 4 && this.status == 200) {

                // document.getElementById("demo").innerHTML = this.responseText;

                location.reload();

            }

        };

        xhttp.open("GET", "/functions/ajax/sort_price.php?sort=" + sort, true);

        xhttp.send();



    }



    function sort_num(data) {

        var sort = data.value;

        var xhttp = new XMLHttpRequest();

        xhttp.onreadystatechange = function () {

            if (this.readyState == 4 && this.status == 200) {

                // document.getElementById("demo").innerHTML = this.responseText;

                location.reload();

            }

        };

        xhttp.open("GET", "/functions/ajax/sort_num.php?sort=" + sort, true);

        xhttp.send();

    }
</script>

<script>
    function attribute (name, value) {
        // alert('attribute');

        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var bien = this.responseText;
                // alert(bien);
                // location.reload();
                window.location.href = "/<?= $_GET['page'] ?>";
            }
          };
          xhttp.open("GET", "/functions/ajax/attribute.php?name="+name+"&value="+value, true);
          xhttp.send();
    }
</script>

<script>
    function price_min (price) {
        // alert(price);
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // document.getElementById("demo").innerHTML = this.responseText;
                window.location.href = "/<?= $_GET['page'] ?>";
            }
        };
        xhttp.open("GET", "/functions/ajax/price_min.php?price="+price, true);
        xhttp.send();
    }

    function price_max (price) {
        // alert(price);
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // document.getElementById("demo").innerHTML = this.responseText;
                window.location.href = "/<?= $_GET['page'] ?>";
            }
        };
        xhttp.open("GET", "/functions/ajax/price_max.php?price="+price, true);
        xhttp.send();
    }
</script>