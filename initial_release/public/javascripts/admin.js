jQuery(document).ready(function() {

    $(".toggle").click(function(){
        $("#SeoBlock").toggle()
    });

    $("#flash_notice #close").click(function() {
        $("#flash_notice").hide('1000')
    });

});