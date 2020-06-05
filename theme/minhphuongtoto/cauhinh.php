<?php 
    if (!isset($_GET['trang'])) {
        header('location: /');
    }
    if (!isset($_GET['search'])) {
        header('location: /');
    }

    if (!isset($_SESSION['link_xd'])) {
        $_SESSION['link_xd'] = $_GET['search'];
    } else {
        if ($_SESSION['link_xd'] == $_GET['search']) {

        } else {
            $_SESSION['link_xd'] = $_GET['search'];
            $_SESSION['attribute_xd'] = array();
            unset($_SESSION['sort_price_xd']);
        }
    }

    $action = new action();
    $action_product = new action_product();
    $xay_dung = $action->getList('xay_dung_may_tinh', '', '', 'id', 'asc', '', '', '');
    $rows_all = $action->getList_xaydung_all('product', 'xay_dung_id', $_GET['search'], 'product_id', 'desc', $trang, '', $_GET['page'], $_GET['page']);
    $rows = $action->getList_xaydung('product', 'xay_dung_id', $_GET['search'], 'product_id', 'desc', $trang, '', $_GET['page'], $_GET['page']);//var_dump($rows);

    $thuoc_tinh = $action_product->get_list_attribute($rows_all);//var_dump($thuoc_tinh_1);
    $rows = $action->list_product_bycat_xd($rows, $trang, $_GET['page'], 30);
    // var_dump($_SESSION['xay_dung']);
    function tinh_phi () {
        global $action;
        $tong = 0;
        foreach ($_SESSION['xay_dung'] as $item) {
            $product = $product = $action->getDetail('product', 'product_id', $item);
            if ($product['product_price_sale'] == 0) {
                $tong += $product['product_price'];
            } else {
                $tong += $product['product_price_sale'];
            }
        }

        return number_format($tong);
    }
    echo $a;
?>
<div class="container">
    <link rel="stylesheet" type="text/css" href="/css/builder-maihhoang.css">
    <div class="product-home danh-muc-tin-page">
        <div class="wrapper clearfix">

            <div class="bulider-price">
                <p>Chi phí dự tính <span id="tong"><?= tinh_phi() ?></span> VND <a href="/finish"
                        class="finishbuilderbtn">Đã lựa chọn xong</a></p>
            </div>

            <div class="loc-san-pham">
                <div class="wrapper clearfix">
                    <div class="loc-san-pham-wrapper">
                        <div class="loc-box">
                            <div class="loc1">
                                <ul>
                                    <?php 
                                    foreach ($thuoc_tinh as $tt) { 
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
                                    <span>Kiểu lọc <span class="icon_dropdown"></span></span>
                                    <ul>
                                        <li><a href="#" rel="nofollow">Đầy đủ tiêu chí</a> </li>
                                        <li><a href="#" rel="nofollow">Một trong những tiêu chí</a> </li>
                                    </ul>
                                </div>
                                <div class="sort_select">
                                    <span>Sắp xếp sản phẩm <span class="icon_dropdown"></span> </span>
                                    <ul>
                                        <li><a onclick="sort_price('default')" rel="nofollow">Mới nhất</a> </li>
                                        <li><a onclick="sort_price('cu')" rel="nofollow">Cũ nhất</a> </li>
                                        <li><a onclick="sort_price('price_asc')" rel="nofollow">Giá: thấp -&gt; cao</a> </li>
                                        <li><a onclick="sort_price('price_desc')" rel="nofollow">Giá: cao -&gt; thấp</a> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="list-attribute" style="float: right;width: 100%;text-align: right;font-size: 12px;padding: 10px 0;">
                            <?php 
                            foreach ($_SESSION['attribute_xd'] as $item) { 
                                $tt_v = $action->getDetail('thuoc_tinh_value', 'id', $item);
                                $tt_n = $action->getDetail('thuoc_tinh', 'id', $tt_v['thuoc_tinh_id']);
                            ?>
                            <span><b><?= $tt_n['name'] ?></b>: <a onclick="attribute('<?= $tt_v['thuoc_tinh_id'] ?>', '<?= $item ?>')"><?= $tt_v['name'] ?> [X]</a></span>
                            <?php } ?>
                        </div>

                    </div>
                </div>
            </div>


            <div class="product-home danh-muc-page">
                <div class="wrapper clearfix row">

                    <div class="wrapper-sidebar-bulider1 col-sm-2">
                        <div class="row">
                            <?php 
                            $d = 0;
                            foreach ($xay_dung as $item) { 
                                $d++;
                            ?>  
                            <div class="step <?= $item['id']==$_GET['search'] ? 'instep' : '' ?>">
                                <a href="/<?= $_GET['page'] ?>/1/<?= $item['id'] ?>">
                                    <div class="step_label">
                                        Bước <?= $d ?> : <br> Chọn <?= $item['name'] ?>
                                    </div>
                                </a>
                                <div class="step_thumb" data-step="main" id="select-<?= $item['id'] ?>">
                                    <?php 
                                    if (isset($_SESSION['xay_dung'][$item['id']])) { 
                                        $pro_xd = $action->getDetail('product', 'product_id', $_SESSION['xay_dung'][$item['id']]);
                                        $img_spc = '/images/'.$pro_xd['product_img'];
                                        if (empty($pro_xd['product_img'])) {
                                            $img_1c = explode("d=", $pro_xd['product_img_1']);
                                            $img_spc = 'https://docs.google.com/uc?export=view&id='.$img_1c[1];
                                        }
                                    ?>
                                        <span class="buildpc_remove_item" data-id="6535" data-step="main" onclick="bo_chon(<?= $item['id'] ?>)">Bỏ chọn</span>
                                        <img src="<?= $img_spc ?>">
                                    <?php }
                                    ?>
                                </div>
                            </div>
                            <?php } ?>

                            

                            <a href="/finish">
                                <div class="step ">
                                    <div class="step_label">
                                        Bước 14 : <br> Tính toán chi phí
                                    </div>
                                    <div class="step_thumb" data-step="finish">

                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="wrapper-pro-bulider1 col-sm-10">
                        <?php 
                        foreach ($rows['data'] as $item) { 
                            $img_sp = '/images/'.$item['product_img'];
                            if (empty($item['product_img'])) {
                                $img_1 = explode("d=", $item['product_img_1']);
                                $img_sp = 'https://docs.google.com/uc?export=view&id='.$img_1[1];
                            }
                        ?>
                        <div class="pro-item-builder row">
                            <div class="pro-img col-sm-2 col-xs-12">
                                <a
                                    href="/<?= $item['friendly_url'] ?>">
                                    <img data-id="6535" src="<?= $img_sp ?>">
                                </a>
                            </div>
                            <div class="pro-desc col-sm-6 col-xs-12">
                                <h2><a href="/<?= $item['friendly_url'] ?>"
                                        title="<?= $item['product_name'] ?>"
                                        rel="bookmark"><?= $item['product_name'] ?></a></h2>
                                <?php if ($item['product_price_sale']==0) { ?>
                                <p class="pro-price"><?= number_format($item['product_price']) ?> VND</p>
                                <?php } else { ?>
                                <p class="pro-price"><?= number_format($item['product_price_sale']) ?> VND</p>
                                <p class="pro-price"><del><?= number_format($item['product_price']) ?> VND</del></p>
                                <?php } ?>
                                <p>Mã hàng: <?= $item['product_code'] ?></p>
                                <p>Bảo hành: <?= $item['product_shape'] ?></p>
                                <p>Hãng sản xuất: <?= $item['product_expiration'] ?></p>
                                <p>Xuất xứ: <?= $item['product_material'] ?></p>
                            </div>
                            <div class="pro-store col-sm-2 co-xs-6">
                                <p><b>Đang còn hàng tại:</b></p>
                                <p></p>
                            </div>
                            <div class="add-to-builder col-sm-2 col-xs-6">
                                <span class="addbuilder" data-id="6535" data-step="main" onclick="chon_sp(<?= $_GET['search'] ?>, <?= $item['product_id'] ?>)">
                                    Chọn sản phẩm này
                                </span>
                            </div>
                        </div>
                        <?php } ?>
                        
                        
                    </div>
                    

                </div>
            </div>




        </div>
        <div style="text-align: left;">
            <?= $rows['paging'] ?>
        </div>
    </div>
</div>

<script>
    function attribute (name, value) {
        // alert('attribute');

        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var bien = this.responseText;
                // alert(bien);
                // location.reload();
                window.location.href = "/<?= $_GET['page'] ?>/1/<?= $_GET['search'] ?>";
            }
          };
          xhttp.open("GET", "/functions/ajax/attribute_xd.php?name="+name+"&value="+value, true);
          xhttp.send();
    }

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

        xhttp.open("GET", "/functions/ajax/sort_price_xd.php?sort=" + sort, true);

        xhttp.send();



    }

    function chon_sp (type, pro) {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("select-"+type).innerHTML = this.responseText;
                tinh_phi();
            }
          };
          xhttp.open("GET", "/functions/ajax/chon_sp.php?type="+type+"&pro="+pro, true);
          xhttp.send();
    }

    function bo_chon (type) {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // document.getElementById("select-"+type).innerHTML = this.responseText;
                location.reload();
            }
          };
          xhttp.open("GET", "/functions/ajax/bo_chon.php?type="+type, true);
          xhttp.send();
    }

    function tinh_phi () {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             document.getElementById("tong").innerHTML = this.responseText;
             // alert(this.responseText);
            }
          };
          xhttp.open("GET", "/functions/ajax/tinh_phi.php", true);
          xhttp.send();
    }
</script>