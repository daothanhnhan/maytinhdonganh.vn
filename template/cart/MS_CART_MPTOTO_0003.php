<div class="gb-chi-tiet-add-to-cart">
    <form class="cart" method="post" enctype="multipart/form-data">
        <div class="quantity">
            <div class="form-group">
                <label>Số lượng:</label>
                <input type="number" class="form-control qty number_cart" id="pwd" min="0" value="1">
                <input type="hidden" name="id" id="product_id" value="<?php echo $rowLang['product_id'];?>">
                <input type="hidden" name="name" id="product_name" value="<?= $rowLang['lang_product_name'];?>">
                <?php if ($row1['product_price_sale']!=0) { ?>
                <input type="hidden" name="price" id="product_price" value="<?php echo $row1['product_price_sale'];?>">
                <?php } else { ?>
                <input type="hidden" name="price" id="product_price" value="<?php echo $row1['product_price'];?>">
                <?php } ?>
            </div>
        </div>
        <!-- <button type="button" name="add-to-cart" class="single_add_to_cart_button button alt btn_addCart">Đặt hàng</button> -->
        <div class="clearfix"></div>
    </form>
</div>
<div class="gb-order-detail-dat-hang" style="margin-top: 10px;">
    <button type="" class="btn_addCart" style="width: 100%;background-color: red;border: 0;color: #fff;padding: 10px 0;border-radius: 5px;">
        <span style="text-transform: uppercase;font-weight: bold;">Đặt hàng</span><br>
        <p>Giao hàng tận nơi nhanh chóng</p>
    </button>
</div>
<div class="gb-order-detail-gh-trg" style="margin-top: 10px;">
    <button type="" class="btn_addCart_gh" style="width: 49%;background-color: #fb9a0a;border: 0;color: #fff;padding: 10px 0;float: left;border-radius: 5px;">
        <span style="text-transform: uppercase;font-weight: bold;">Thêm vào giỏ hàng</span><br>
        <p>Thêm vào giỏ để chọn tiếp</p>
    </button>
    <button type="" class="btn_addCart_trg" style="width: 49%;background-color: #243a76;border: 0;color: #fff;padding: 10px 0;float: right;border-radius: 5px;">
        <span style="text-transform: uppercase;font-weight: bold;">Mua trả góp</span><br>
        <p>Lãi xuất 0% qua thẻ tín dụng</p>
    </button>
</div>