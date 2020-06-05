<?php 
	$rows = $action->getList_search('product', '', '', 'product_id', 'desc', $trang, 30, $_GET['page']);
?>
<div class="container">
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
				<div class="loc-box" style="display: none;">
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

                                        ?>
                                    <div class="pro-item-catline">
                                        <div class="pro-img" data-id="2078">
                                            <a href="/<?= $rowLang1['friendly_url'] ?>">

                                                <img src="/images/<?= $row1['product_img'] ?>" alt=""
                                                    class="img-responsive">

                                            </a>
                                        </div>
                                        <div class="pro-thumb-list">
                                            <div class="tiny-img">
                                                <div class="tiny-img-wrapper clearfix">
                                                    <div class="citem" data-id="2078"><img
                                                            src="/images/<?= $row1['product_img'] ?>"></div>
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
</<div>