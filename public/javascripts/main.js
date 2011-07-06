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

    $("#feed_form .error_messages").parent().show()

    $(".feeds .feed:odd").removeClass("right").addClass("left")


    $("#reserv select").selectbox();

});