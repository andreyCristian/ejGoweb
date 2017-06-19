(function($) {
    $('a[href*="#"]:not([href="#"])').click(function() {
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
        || location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) {
                $('html,body').animate({
                    scrollTop: target.offset().top - 45
                }, 800);
                return false;
            }
        }
    });

    $(window).scroll(function() {
        if ($(document).scrollTop() > 200) {
            $('nav').addClass("navbar-scroll").removeClass("navbar-default");
        } else {
            $('nav').removeClass("navbar-scroll").addClass("navbar-default");
        }
    });
})(jQuery); // End of use strict
