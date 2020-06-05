<div class="gb-menu-category_mptoto menu_con loc_2">

    <nav class="main-navigation uni-menu-text">

        <div class="cssmenu">

            <ul>

                <?php

                        $action_product = new action_product();

                        $list_product_parent = $action_product->getProductCat_byProductCatIdParent(0, 'asc');

                        foreach ($list_product_parent as $item) {
                            $issub = $action_product->getListProductCatSub($item['friendly_url'], $lang);
                    ?>

                <li class="has-sub">

                    <a href="/<?= $item['friendly_url'] ?>" class="<?= $issub==0 ? 'no-sub' : '' ?>">

                        <img src="/images/<?= $item['productcat_img'] ?>" class="icon_cate_websmienphi">

                        <?= $item['productcat_name'] ?>

                    </a>

                    <ul class="row">

                        <?php

                                    $list_product_sub = $action_product->getProductCat_byProductCatIdParent($item['productcat_id'], '');

                                    foreach ($list_product_sub as $item_sub) {

                                ?>

                        <li class="col-md-5">

                            <div class="item">

                                <h3><a href="/<?= $item_sub['friendly_url'] ?>"><?= $item_sub['productcat_name'] ?></a>
                                </h3>

                                <ul>

                                    <?php

                                                    $list_product_sub_2 = $action_product->getProductCat_byProductCatIdParent($item_sub['productcat_id'], '');

                                                    foreach ($list_product_sub_2 as $item_sub_2) {

                                                ?>

                                    <li><a href="/<?= $item_sub_2['friendly_url'] ?>">
                                            <?= $item_sub_2['productcat_name'] ?></a></li>

                                    <?php } ?>

                                </ul>

                            </div>

                        </li>

                        <?php } ?>

                        <li class="image_cate">

                            <img src="/images/<?= $item['productcat_sub'] ?>" alt="" class="lazy_menu img-responsive">

                        </li>

                    </ul>

                </li>

                <?php } ?>

            </ul>

        </div>

    </nav>

</div>