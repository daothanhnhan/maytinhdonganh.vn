<?php
    $rows = $acc->getList("mua_tra_gop","","","id","desc",$trang, 20, "mua-tra-gop");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <!-- <h1><a href="index.php?page=them-thuong-hieu">Thêm</a></h1> -->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Note</th>
                    <th>Product</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        $arr = json_decode($row['product']);//var_dump($arr);
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            <td><?= $row['email']?></td>
                            <td><?= $row['phone']?></td>
                            <td><?= $row['address']?></td>
                            <td><?= $row['note']?></td>
                            <td>
                                <?php 
                                foreach ($arr as $v) { 
                                    $product = $action->getDetail('product', 'product_id', $v);
                                ?>
                                <p><a href="index.php?page=sua-san-pham&id=<?= $v ?>" title=""><?= $product['product_name'] ?></a></p><hr>
                                <?php } ?>
                            </td>
                            
                            <td style="float: none;"><a href="index.php?page=xoa-mua-tra-gop&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a>  <a href="index.php?page=sua-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;"></a></td>
                                
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>             