var offset = 0;
const sliderLine = document.querySelector('.cover-slider');
const sliderNews = document.querySelector('.list-news');

document.querySelector('.next-btn').addEventListener('click', function() {
    offset = offset + 1280;
    if (offset > 1280) {
        offset = 0;
    }
    sliderLine.style.left = -offset + 'px';
});

document.querySelector('.prev-btn').addEventListener('click', function() {
    offset = offset - 1280;
    if (offset < 0) {
        offset = 1280;
    }
    sliderLine.style.left = -offset + 'px';
});

document.querySelector('.news-next-btn').addEventListener('click', function() {
    offset = offset + 1280;
    if (offset > 1280) {
        offset = 0;
    }
    sliderNews.style.left = -offset + 'px';
});

document.querySelector('.news-prev-btn').addEventListener('click', function() {
    offset = newsoffset - 1280;
    if (offset < 0) {
        offset = 1280;
    }
    sliderNews.style.left = -offset + 'px';
});
