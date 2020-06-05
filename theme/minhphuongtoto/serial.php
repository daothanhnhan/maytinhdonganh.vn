<?php
    // function bao_hanh () {
    //     global $conn_vn;
    //     if ($_POST['serial'] != '') {
    //         $code = $_POST['serial'];
    //         $sql = "SELECT * FROM bao_hanh WHERE mabaohanh = '$code'";
    //         $result = mysqli_query($conn_vn, $sql);
    //         $num = mysqli_num_rows($result);
    //         $rows = array();
    //         if ($num > 0) {
    //             while ($row = mysqli_fetch_assoc($result)) {
    //                 $rows[] = $row;
    //             }
    //         }
    //         return $rows;
    //     }
    // }
    function bao_hanh () {
        global $conn_vn;
        global $action;
        if ($_POST['serial'] != '') {
            $code = $_POST['serial'];
            $don = $action->getList('cart', 'phone_buyer', $code, 'id_cart', 'asc', '', '', '');
            $don_dtt = array();
            foreach ($don as $item) {
                if ($item['id_orderState'] == 4) {
                    $don_dtt[] = $item;
                }
                
            }
            return $don_dtt;
        } else {
            return array();
        }
    }
    $baohanh = bao_hanh();
?>
<div class="container">
<div class="barcode_wrapper">
<form action="" method="post">
    <div class="barcode_form_line">
        <label>Nhập mã khách hàng cần tìm</label>
        <input type="text" name="serial" value="" id="serial" class="ajax_serial_input form-control"
            required="required">
    </div>
</form>
    <div class="ajax_serial_search">


    </div>

    <script>
        var typingTimer;
        var doneTypingInterval = 1000;
        var $input = $('.ajax_serial_input');

        $input.on('keyup', function () {
            clearTimeout(typingTimer);
            typingTimer = setTimeout(doneTyping, doneTypingInterval);
            var name = $('.ajax_serial_input').val();
            $('.ajax_serial_search').html('<p>Bạn đang nhập vào: <b>' + name + '</b></p>');
        });

        $input.on('keydown', function () {
            clearTimeout(typingTimer);
        });

        function doneTyping() {
            var name = $('.ajax_serial_input').val();
            if (name != '') {
                $.post('/barcode/search_serial/', {
                    name: name
                }, function (data) {
                    $('.ajax_serial_search').html(data);
                    $('.ajax_serial_input').focus();
                });
            } else {
                $('.ajax_serial_search').html('<p>Vui lòng nhập mã</p>');
            }
        }
    </script>

</div>
    <table class="table table-striped">
        <thead>
          <tr>
            <th>Mã bảo hành</th>
            <th>Sản phẩm</th>
            <th style="min-width: 100px;">Ngày mua</th>
            <th>Hết bảo hành</th>
          </tr>
        </thead>
        <tbody>
        <?php 
        foreach ($baohanh as $item) { 
            $cartdetail = $action->getList('cartdetail', 'id_cart', $item['id_cart'], 'id_cartDetail', 'asc', '', '', '');
            foreach ($cartdetail as $v_cade) { 
                $product = $action->getDetail('product', 'product_id', $v_cade['id_product']);
                $exist = (int)$product['product_shape'];
        ?>
          <tr>
            <td><?= $item['phone_buyer'] ?></td>
            <td><?= $product['product_name'] ?></td>
            <td><?= date('d-m-Y', strtotime($item['date_cart'])); ?></td>
            <td><?= date('d-m-Y', strtotime($item['date_cart'] . ' +'.$exist.' months')); ?></td>
          </tr>
        <?php } } ?>
        </tbody>
      </table>
    </div>