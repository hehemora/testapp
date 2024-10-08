document.getElementById("burger-btn").addEventListener('click', function() {
    if (document.getElementById("nav-mob").classList.contains("open") == true) {
        document.getElementById("nav-mob").classList.remove("open")
    } else {
        document.getElementById("nav-mob").classList.add("open")
    }
});

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
        360: {
            slidesPerView: 1
        },
        576: {
            slidesPerView: 2
        },
        992: {
            slidesPerView: 3
        },
        
    }
});


