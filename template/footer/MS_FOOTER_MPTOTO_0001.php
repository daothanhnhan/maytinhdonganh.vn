<footer class="site-footer footer-default">

    <div class="footer-main-content">

        <div class="container">

            <div class="row">

                <div class="col-md-4">

                    <div class="footer-main-content-element">

                        <aside class="widget-footer">

                            <div class="widget-title uni-uppercase"><a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo-footer.png" class="img-responsive"></a></div>

                            <div class="widget-content">

                                <div class="foote-intro-mptoto">

                                    <p>

                                        <?= $rowConfig['web_email'] ?>

                                    </p>

                                </div>

                            </div>

                        </aside>

                    </div>

                </div>

                <div class="col-md-4">

                    <div class="footer-main-content-element">

                        <aside class="widget-footer">

                            <div class="widget-title uni-uppercase" style="width:100%"><?= $rowConfig['web_email'] ?></div>

                            <div class="widget-content">

                                <div class="foote-lienhe-mptoto">

                                    <ul>

                                        <li style=""><span>PHONE:</span> <?= $rowConfig['content_home3'] ?> - <?= $rowConfig['content_home6'] ?></li>

                                        <li><span>FAX:</span> <?= $rowConfig['content_home3'] ?> - <?= $rowConfig['content_home6'] ?></li>

                                        <li><span>EMAIL:</span> <?= $rowConfig['content_home2'] ?></li>

                                        <li><span>ADRESS:</span> <?= $rowConfig['content_home1'] ?></li>

                                    </ul>

                                </div>

                            </div>

                        </aside>

                    </div>

                </div>

                <div class="col-md-4">

                    <div class="footer-main-content-element">

                        <aside class="widget-footer">

                            <div class="widget-title uni-uppercase" style="width:100%">Chính sách</div>

                            <div class="widget-content">

                                <div class="foote-khachhang-mptoto">

                                    <?php include DIR_EMAIL."MS_EMAIL_MPTOTO_0004.php";?>

                                    <?php include DIR_SOCIAL."MS_SOCIAL_MPTOTO_0001.php";?>

                                </div>

                            </div>

                        </aside>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <!-- <div class="copyright-area">

        <div class="container">

            <div class="copyright-content">

                <p class="copyright-text">© Copyright 2017. All rights reserved. Design by Goldbridge</p>

            </div>

        </div>

    </div> -->

</footer>
<script type="text/javascript">
    function load_url (id, name, price) {
        var name1 = encodeURIComponent(name);
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           // document.getElementById("demo").innerHTML = this.responseText;
           // alert(this.responseText);
           // alert('thanh cong.');
           // window.location.href = "/gio-hang";
           if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
                  window.location = '/gio-hang';
              }else{
                  location.reload();
              }  
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name1+"&product_price="+price+"&product_quantity=1&action=add&product_size=");
        // xhttp.send();        
    }
</script>