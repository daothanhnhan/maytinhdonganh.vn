<?php 
    // $action_product = new action_product();
    // $list_product_parent = $action_product->getProductCat_byProductCatIdParent(0, 'asc');
?>
<div class="wrapper clearfix">
    <div class="menunav rơw">
        <div class="danhmucsp-header col-md-3"><div class="loc_1">
            <i class="toggle-header"></i><span>DANH MỤC SẢN PHẨM</span><i class="play-icon"></i>
</div>
        <?php include DIR_MENU."MS_MENU_MPTOTO_0006.php";?>
    </div>
        
        <div class="icon-mangxahoi col-md-2" style="display: none;">
            <a href="#"><i class="fa fa-rss"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter "></i></a>
            <a href="#"><i class="fa fa-globe"></i></a>
        </div>

        <div class="searchbar col-md-7">
            <form method="get" action="/index.php" class="">
                <input type="hidden" name="page" value="search">
                <select class="cat_search col-xs-3" name="cat">
                    <option value="0">Tất cả</option>
                    <?php
                            $action_product = new action_product();
                            $list_product_parent = $action_product->getProductCat_byProductCatIdParent(0, 'asc');
                            foreach ($list_product_parent as $item) {
                        ?>
                    <option value="<?= $item['productcat_id'] ?>" class="tax_level_0">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= $item['productcat_name'] ?></option>
                    <?php
                                $list_product_sub = $action_product->getProductCat_byProductCatIdParent($item['productcat_id'], '');
                                foreach ($list_product_sub as $item_sub) {
                            ?>
                    <option value="<?= $item_sub['productcat_id'] ?>" class="tax_level_1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= $item_sub['productcat_name'] ?>
                    </option>
                    <?php
                                    $list_product_sub_2 = $action_product->getProductCat_byProductCatIdParent($item_sub['productcat_id'], '');
                                    foreach ($list_product_sub_2 as $item_sub_2) {
                                ?>
                    <option value="<?= $item_sub_2['productcat_id'] ?>" class="tax_level_2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= $item_sub_2['productcat_name'] ?>
                    </option>
                    <?php
                                        $list_product_sub_3 = $action_product->getProductCat_byProductCatIdParent($item_sub_2['productcat_id'], '');
                                        foreach ($list_product_sub_3 as $item_sub_3) {
                                    ?>
                    <option value="<?= $item_sub_3['productcat_id'] ?>" class="tax_level_3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= $item_sub_3['productcat_name'] ?>
                    </option>
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>


                </select>
                <input name="key" type="text" class="input_search col-xs-7" autocomplete="off"
                    placeholder="Nhập từ khóa hoặc mã hàng">
                <input type="submit" class="submit_search col-xs-2" value="Tìm kiếm">
            </form>
            <div class="auto_suggest"></div>
        </div>
        <div class="cart-homearea col-md-2"><a href="/gio-hang">
                <div class="total_item"><i class="fa fa-cart"></i> <span class="cart-label-arrow">&nbsp;</span>
            
            </div>
            <?php 
            // var_dump($_SESSION['shopping_cart']);
            $tong_tien = 0;
            foreach ($_SESSION['shopping_cart'] as $item) {
                $tong_tien += $item['product_price']*$item['product_quantity'];
            }
            ?>
                <div class="total_price"><span><?= number_format($tong_tien) ?></span> VND</div>
            </a></div>
    </div>
</div>
<script>

    $(document).ready(function () {

        $('.loc_1').on('click', function (e) {

            $(this).next().slideToggle('600');

            $(".loc_2").not($(this).next()).slideUp('600');

            $(this).toggleClass('active').siblings().removeClass('active');

        });

    });

</script>
<style>
.gb-menu-category_mptoto.menu_con{
    display:none;
}
</style>