$(document).ready(function() {

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

    $("a[rel=example_group]").fancybox({
        'transitionIn'        : 'none',
        'transitionOut'        : 'none',
        'titlePosition'     : 'over',
        'titleFormat'        : function(title, currentArray, currentIndex, currentOpts) {
            return '<span id="fancybox-title-over">' + (title.length ? ' &nbsp; ' + title : '') + '</span>';
        }
    });


});