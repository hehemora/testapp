new Swiper('.card-wrapper', {
    // Optional parameters
    loop: true,
    spaceBetween: 10,
    
    // Navigation arrows
    navigation: {
        nextEl: '.selected-button-next',
        prevEl: '.selected-button-prev',
    },
    
    breakpoints: {
        576: {
            slidesPerView: 1
        },
        992: {
            slidesPerView: 2
        },
        1280: {
            slidesPerView: 3
        },
    }
});