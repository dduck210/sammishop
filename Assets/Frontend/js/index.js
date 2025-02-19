$(".icon-search").click(function(event) {
    event.preventDefault();
    if ($(".search").hasClass("hidden")) {
        $(".search").addClass("active").removeClass("hidden");
        $(this).slideDown(500);
    } else {
        $(".search").addClass("hidden").removeClass("active")
    }
});

$('.menu li').hover(function() {
    $(this).find("ul:first").slideDown(500);
}, function() {
    $(this).find("ul:first").hide(300);
});
$(".icon-shopping").click(function(event) {
    event.preventDefault();
    if ($(".minicart").hasClass("hidden")) {
        $(".minicart").addClass("active").removeClass("hidden");
    } else {
        $(".minicart").addClass("hidden").removeClass("active")
    }
});
$(document).ready(function() {
    $('#myCrousel').owlCarousel({
        items: 1,
        loop: true,
        autoplay: true,
        autoplayTimeout: 4000,
    });
});