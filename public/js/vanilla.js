document.getElementById("dropdown-btn").addEventListener('click', function() {
    if (document.getElementById("dropdown-menu").classList.contains("disp") == true) {
        document.getElementById("dropdown-menu").classList.remove("disp")
    }
    else {
        document.getElementById("dropdown-menu").classList.add("disp")
    };
});

/* Отобразить модальное окно */
document.getElementById("modal-open-btn").addEventListener('click', function() {
    document.getElementById("modal-window").classList.add("open")
});

/* Скрыть модальное окно */
document.getElementById("close-modal-btn").addEventListener('click', function() {
    document.getElementById("modal-window").classList.remove("open")
});

document.getElementById("modal-close").addEventListener('click', function() {
    document.getElementById("modal-window").classList.remove("open")
});

document.getElementById("materials-btn").addEventListener('click', function() {
    if (document.getElementById("materials-list").classList.contains("open") == true) {
        document.getElementById("materials-list").classList.remove("open")
    } else {
        document.getElementById("materials-list").classList.add("open")
    }
});

document.getElementById("close-nav").addEventListener('click', function() {
    document.getElementById("materials-list").classList.remove("open")
});

