$(document).ready(function() {


    audiojs.events.ready(function() {
        var as = audiojs.createAll();
    });


//    $(".order .edit_cart_item input").bind("keyup", function() {
//        var $this = $(this);
//        var pid = $this.data("id");
//        var pcount = $this.val();
//        var paint = parseInt(pcount);
//
//        if (pcount == "" || pcount == 0 || isNaN(paint)) {
//            return false;
//        } else {
//            $.post(
//                    "/ajax/cart.php",
//            {
//                "id": pid,
//                "action": "recalculate",
//                "count": paint
//            },
//                    function(data) {
//
//                        if (data.sum > summin) {
//                            $submit.attr("disabled", false).next().hide();
//                        }
//                        else {
//                            $submit.attr("disabled", true).next().show();
//                        }
//                        $cartSum.text(data.sum);
//                        $submit.focus();
//                    }, 'json'
//                    );
//        }
//    });


    $('#slider div').cycle({
        fx: 'fade'
    });

    $("#feed_form div.toggle").click(function() {
        $("#feed_form form").toggle()
    });

    $("#flash_notice #close").click(function() {
        $("#flash_notice").hide('1000')
    });

    $(".dish_list .dish:nth-child(3n)").after("<div class='cb'></div>");

    $("#feed_form .error_messages").parent().show()

    $(".feeds .feed:odd").removeClass("right").addClass("left")


    $("#reserv select").selectbox();


});