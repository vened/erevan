jQuery(document).ready(function() {

    $(".toggle").click(function() {
        $("#SeoBlock").toggle()
    });

    $("#flash_notice #close").click(function() {
        $("#flash_notice").hide('1000')
    });


    // BEGIN dateinput initialise
    $.tools.dateinput.localize("ru", {
        months:        'Январь, Февраль, Март, Апрель, Май, Июнь, Июль, Август, Сентябрь, Октябрь, Ноябрь, Декабрь',
        shortMonths:   'янв, фев, мр, апр, май, июнь, июль, авг, снт, окт, ноя, дек',
        days:          'воскресенье, понедельник, вторник, среда, четверг, пятница, суббота',
        shortDays:     'вс, пн, вт, ср, чт, пт, сб'
    });
    $("#guest_data").dateinput({
        trigger: true,
        lang: 'ru',
        format: 'dd.mm.yyyy',
    });
    // END dateinput initialise

    $("a[rel=example_group]").fancybox({
        'transitionIn'        : 'none',
        'transitionOut'        : 'none',
        'titlePosition'     : 'over',
        'titleFormat'        : function(title, currentArray, currentIndex, currentOpts) {
            return '<span id="fancybox-title-over">' + (title.length ? ' &nbsp; ' + title : '') + '</span>';
        }
    });

});