<?php include DIR_PRODUCT."MS_PRODUCT_MPTOTO_0013.php";?>
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