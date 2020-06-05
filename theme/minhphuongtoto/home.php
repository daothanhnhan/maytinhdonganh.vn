<!--CONTENT-->
<div class="Content-Main_mptoto">
  <!--SLIDE-->
  <div class="container">
    <div class="row">
      <div class="col-sm-3">
        <?php include DIR_MENU."MS_MENU_MPTOTO_0003.php";?>
      </div>
      <div class="col-sm-9">
        <?php include DIR_SLIDESHOW."MS_SLIDESHOW_MPTOTO_0001.php";?>
      </div>
    </div>
  </div>

  <?php include DIR_SLIDESHOW."MS_SLIDESHOW_MPTOTO_0002.php";?>

  <div class="container">
    <div class="product-home">
      <div class="wrapper clearfix">
        <?php include DIR_PRODUCT."MS_PRODUCT_MPTOTO_0018.php";?>

        <?php include DIR_SERVICE."MS_SERVICE_MPTOTO_0002.php";?>
        <?php include DIR_PRODUCT."MS_PRODUCT_MPTOTO_0019.php";?>


        <?php include DIR_PRODUCT."MS_PRODUCT_MPTOTO_0017.php";?>


      </div>
    </div>
  </div>

</div>



<style>
  /* Center the loader */

  #loader {

    position: absolute;

    left: 50%;

    top: 50%;

    z-index: 1;

    width: 150px;

    height: 150px;

    margin: -75px 0 0 -75px;

    border: 16px solid #f3f3f3;

    border-radius: 50%;

    border-top: 16px solid #3498db;

    width: 120px;

    height: 120px;

    -webkit-animation: spin 2s linear infinite;

    animation: spin 2s linear infinite;

  }



  @-webkit-keyframes spin {

    0% {
      -webkit-transform: rotate(0deg);
    }

    100% {
      -webkit-transform: rotate(360deg);
    }

  }



  @keyframes spin {

    0% {
      transform: rotate(0deg);
    }

    100% {
      transform: rotate(360deg);
    }

  }



  /* Add animation to "page content" */

  .animate-bottom {

    position: relative;

    -webkit-animation-name: animatebottom;

    -webkit-animation-duration: 1s;

    animation-name: animatebottom;

    animation-duration: 1s
  }



  @-webkit-keyframes animatebottom {

    from {
      bottom: -100px;
      opacity: 0
    }

    to {
      bottom: 0px;
      opacity: 1
    }

  }



  @keyframes animatebottom {

    from {
      bottom: -100px;
      opacity: 0
    }

    to {
      bottom: 0;
      opacity: 1
    }

  }



  #myDiv {

    /*display: none;*/

    text-align: center;

  }

  .gb-popup-overlay {

    position: fixed;

    top: 0;

    right: 0;

    bottom: 0;

    left: 0;

    z-index: 9999;

    -webkit-overflow-scrolling: touch;

    outline: 0;

    background: rgba(0, 0, 0, 0.7);

    display: flex;

    align-items: center;

    justify-content: center;

  }

  .gb-popup-overlay-content {

    position: fixed;

    width: 550px;

    /*background: #fff;*/

    z-index: 9999;

    top: 50%;

    left: 50%;

    transform: translate(-50%, -50%);

  }

  @media screen and (max-width: 500px) {

    .gb-popup-overlay-content {

      /*position: relative;*/

      width: 85%;

      background: #fff;

    }

  }

  .gb-popup-overlay-content .close_poup {

    width: 40px;

    height: 40px;

    background: red;

    color: #fff;

    position: absolute;

    z-index: 9999999999999;

    right: -26px;

    top: -20px;

    border-radius: 50%;

    display: flex;

    align-items: center;

    justify-content: center;

  }
</style>



<!-- <div id="loader"></div> -->



<!-- <div class="gb-popup-overlay"></div>

    <div class="gb-popup-overlay-content">

        <div class="close_poup"><i class="fa fa-times" aria-hidden="true"></i></div>

        <div id="myDiv">

            <a href="<?= $rowConfig['content_home10']?>"><img src="/images/181026 pop up-011.png" alt="" class="img-responsive"></a>

    

        </div>

    </div> -->

<script>
  var myVar;



  function myFunction() {

    myVar = setTimeout(showPage);

  }



  function showPage() {

    document.getElementById("loader").style.display = "none";

    document.getElementById("myDiv").style.display = "block";

  }

  $(document).ready(function () {

    $('.close_poup').click(function () {

      $('.gb-popup-overlay').css('display', 'none');

      $('.gb-popup-overlay-content').css('display', 'none');

    });

    $('.gb-popup-overlay').click(function () {

      $('.gb-popup-overlay-content').css('display', 'none');

      $(this).css('display', 'none');

    })

  });
</script>
<script>
    $(document).ready(function (e) {
      var w_tooltip = $(".tooltip").width();;
      var h_tooltip = 0;
      var pad = 10;
      var x_mouse = 0;
      var y_mouse = 0;
      var wrap_left = 0;
      var wrap_right = 0;
      var wrap_top = 0;
      var wrap_bottom = 0;

      $(".pro-item .pro-img").mousemove(function (e) {
        wrap_left = $(this).parent().parent().offset().left;
        wrap_top = $(this).parent().parent().offset().top;
        wrap_bottom = $(this).parent().parent().offset().top + $(this).parent().parent().parents(
          ".product_list").height();
        x_mouse = e.pageX - $(this).offset().left;
        y_mouse = e.pageY - $(this).offset().top;
        h_tooltip = $(this).parent().children(".tooltip").height();
        $(".tooltip").hide();


        //Move Horizontal
        if ($(this).offset().left - pad - w_tooltip > wrap_left) {
          $(this).parent().children(".tooltip").css("left", 0 - (w_tooltip + pad) + x_mouse);
        } else {
          $(this).parent().children(".tooltip").css("left", pad + x_mouse + 20);
        }

        //Move Vertical		
        if (e.pageY + h_tooltip >= $(window).height() + $(window).scrollTop()) {
          $(this).parent().children(".tooltip").css("top", y_mouse - h_tooltip - pad)
        } else {
          $(this).parent().children(".tooltip").css("top", pad + y_mouse + 20);
        }
        //Show tooltip	
        $(this).parent().children(".tooltip").show();
      });

      $(".pro-item .pro-img").mouseout(function () {
        $(".tooltip").hide();
      });


      $('.menunav .input_search').keyup(function () {
        var name = $(this).val();
        $.post('/suggest/', {
          name: name
        }, function (data) {
          $('.auto_suggest').html(data);
        });
      });




      $(".footer_hotro > h3").click(function () {
        $(".hotrotructuyen_box_footer").toggle();
      });

    });
  </script>
<script type="text/javascript">
  function popuptu() {

    $('.gb-popup-overlay').css('display', 'none');

    $('.gb-popup-overlay-content').css('display', 'none');

    // alert('tuan');

  }

  <
  ?
  php

  if (isset($_SESSION['popup'])) {

    ?
    >

    popuptu();

    <
    ?
    php

  }

  if (!isset($_SESSION['popup'])) {

    $_SESSION['popup'] = 'true';

  }

  // unset($_SESSION['popup']);

  ?
  >
</script>
