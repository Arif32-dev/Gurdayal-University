jQuery(document).ready(function ($) {
    // =================================
    // Slick Carosel Setup
    // =================================
    $('.hero-slider').slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 2000,
        draggable: true,
        infinite: true,
        speed: 500,
        fade: true,
        cssEase: 'linear',
        prevArrow: '<button type="button" class="slick-btn slick-prev">&#10094;</button>',
        nextArrow: '<button type="button" class="slick-btn slick-next">&#10095;</button>'
    });

})