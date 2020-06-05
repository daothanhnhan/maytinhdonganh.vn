<div class="container">
<div class="product-home chi-tiet-page">
    <div class="wrapper clearfix">

        <form action="" method="post" class="payment-form row">
            <div class="payment_col1 col-md-8">

                <div class="payment_box col-sm-6">
                    <div class="payment_title">
                        <span>Thông tin khách hàng</span>
                    </div>
                    <div class="payment_content">
                        <div class="payment_line">
                            <label>Họ tên Quý khách *</label>
                            <input type="text" name="kh_name" value="" id="kh_name" required="required">
                        </div>
                        <div class="payment_line">
                            <label>Địa chỉ Email *</label>
                            <input type="text" name="kh_email" value="" id="kh_email" required="required">
                        </div>
                        <div class="payment_line">
                            <label>Số điện thoại *</label>
                            <input type="text" name="kh_phone" value="" id="kh_phone" required="required">
                        </div>
                        <div class="payment_line">
                            <label>Địa chỉ (số nhà, đường, tỉnh thành) *</label>
                            <textarea name="kh_address" cols="40" rows="10" id="kh_address" required="required"
                                value=""></textarea>
                        </div>
                    </div>
                </div>

                <div class="payment_box col-sm-6">
                    <div class="payment_title">
                        <span>Thông tin nhận hàng</span>
                    </div>
                    <div class="payment_content">
                        <div class="payment_line">
                            <label>Họ tên người nhận hàng *</label>
                            <input type="text" name="nh_name" value="" id="nh_name" required="required">
                        </div>
                        <div class="payment_line">
                            <label>Số điện thoại *</label>
                            <input type="text" name="nh_phone" value="" id="nh_phone" required="required">
                        </div>
                        <div class="payment_line">
                            <label>Địa chỉ (số nhà, đường, tỉnh thành) *</label>
                            <textarea name="nh_address" cols="40" rows="10" id="nh_address" required="required"
                                value=""></textarea>
                        </div>
                        <div class="payment_line">
                            <label>Ghi chú</label>
                            <textarea name="nh_note" cols="40" rows="10" id="nh_note" value=""></textarea>
                        </div>
                    </div>
                </div>

                <div class="payment_box_full col-sm-6">
                    <div class="payment_title">
                        <span>Địa chỉ mua hàng</span>
                    </div>
                    <div class="payment_content">
                        <div class="address_line">
                            <label><input type="radio" name="address_store" value="3">
                                <span>60 Láng Hạ - Đống Đa, HN</span></label>
                        </div>
                        <div class="address_line">
                            <label><input type="radio" name="address_store" value="4">
                                <span>05 Hồ Tùng Mậu - Cầu Giấy, HN</span></label>
                        </div>
                        <div class="address_line">
                            <label><input type="radio" name="address_store" value="5">
                                <span>104 Lê Thanh Nghị - HBT, HN</span></label>
                        </div>
                        <div class="address_line">
                            <label><input type="radio" name="address_store" value="6371">
                                <span>Số ĐKKD: 0100921861 - Sở KH&amp;ĐT Hà Nội cấp ngày 03/05/2002 - Địa chỉ: 241 Phố
                                    Vọng, Phường Đồng Tâm, quận Hai Bà Trưng</span></label>
                        </div>
                    </div>
                </div>

                <div class="payment_box_full col-md-6">
                    <div class="payment_title">
                        <span>Hình thức thanh toán</span>
                    </div>
                    <div class="payment_content">

                        <div class="payment_content_md6">
                            <div class="payment_line">
                                <input type="radio" name="payment" value="Thanh toán trực tiếp">
                                <span>Thanh toán trực tiếp</span>
                                <div class="payment_method_text" data-tab="1">
                                    <p>Quý khách hàng có thể thanh toán trực tiếp tại các cơ sở của Mai Hoàng</p>
                                </div>
                            </div>
                            <div class="payment_line">
                                <input type="radio" name="payment" value="Thanh toán tại nơi giao hàng">
                                <span>Thanh toán tại nơi giao hàng</span>
                                <div class="payment_method_text" data-tab="2">
                                    <p>Quý khách hàng có thể thanh toán tại nơi giao hàng bằng tiền mặt sau khi nhận
                                        được đầy đủ hàng hóa</p>
                                </div>
                            </div>
                        </div>

                        <div class="payment_content_md6">
                            <div class="payment_line">
                                <input type="radio" disabled="" name="payment" value="Thanh toán bằng chuyển khoản">
                                <span>Thanh toán bằng chuyển khoản</span>
                                <div class="payment_method_text" data-tab="3">
                                    <p>
                                        <font color="red">Xin lỗi, hiện tại chúng tôi chưa hỗ trợ hình thức thanh toán
                                            này</font>
                                    </p>
                                </div>
                            </div>
                            <div class="payment_line">
                                <input type="radio" disabled="" name="payment" value="Thanh toán bằng cổng thanh toán">
                                <span>Thanh toán bằng cổng thanh toán</span>
                                <div class="payment_method_text" data-tab="4">
                                    <p>
                                        <font color="red">Xin lỗi, hiện tại chúng tôi chưa hỗ trợ hình thức thanh toán
                                            này</font>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="payment_col2 col-md-4">

                <table class="tablecart">
                    <tbody>
                        <tr>
                            <td>Ảnh</td>
                            <td>Tên sản phẩm</td>
                            <td>Đơn giá</td>
                            <td>Tổng</td>
                        </tr>
                        <tr>
                            <td><img src="https://maihoang.com.vn/thumb/crop/9903/50/50"></td>
                            <td>
                                <a
                                    href="https://maihoang.com.vn/amd-ryzen-threadripper-3970x-3-4-ghz-144-mb-cache-32-cores-64-threads-socket-tr4">AMD
                                    Ryzen Threadripper 3970X/ 3.4 GHz/ 144 MB Cache/ 32 cores/ 64 threads/ Socket
                                    sTRX4</a>
                            </td>
                            <td>49,899,000 VND x 2</td>
                            <td>
                                <b>99,798,000 VND</b>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                            <input type="text" name="captcha" value="" id="sale_code" placeholder="Mã giảm giá">
                                <p class="cart_tongdonhang">Tổng giá trị đơn hàng : <span>99,798,000 VND</span></p>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div class="payment_box_full_width">
                    <div class="payment_title">
                        <span>Xác thực người dùng</span>
                    </div>
                    <div class="payment_content">
                        <div class="payment_line">
                            <div class="captcha_image"><img src="https://maihoang.com.vn/captcha/1586556563.2092.jpg"
                                    style="width: 200; height: 60; border: 0;" alt=" "></div>
                            <input type="text" name="captcha" value="" id="captcha" required="required"
                                placeholder="Vui lòng nhập đúng mã trên vào ô này">
                        </div>
                    </div>
                </div>

                <div class="submit_order_bar">
                    <a class="paymentbtn backtocart" href="https://maihoang.com.vn/cart/checkout">Quay lại giỏ hàng</a>
                    <input type="submit" name="submitorder" class="submitorder" value="Gửi đơn hàng">
                </div>

            </div>
        </form>

    </div>
</div>
</div>