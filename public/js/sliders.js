let offset = 0;
let sliderLine = document.querySelector('.cover-slider');

document.querySelector('.next-btn').addEventListener('click', function() {
    offset = offset + 1280;
    if (offset > 3840) {
        offset = 0;
    }
    sliderLine.style.left = -offset + 'px';
});

document.querySelector('.prev-btn').addEventListener('click', function() {
    offset = offset - 1280;
    if (offset < 0) {
        offset = 3840;
    }
    sliderLine.style.left = -offset + 'px';
});