/* Раскрывающийся список */

const dropdown = document.querySelector('.dropdown-content');
const dropdownBtn = document.querySelector('.dropdown-btn');

dropdownBtn.addEventListener('click', () => {
    if (dropdown.classList.contains('disp') == true) {
        dropdown.classList.remove('disp');
    }
    else {
        dropdown.classList.add('disp');
    }
});

/* Отобразить модальное окно */
document.getElementById("modal-open-btn").addEventListener("click", function() {
    document.getElementById("modal-window").classList.add("open")
});

/* Скрыть модальное окно */
document.getElementById("close-modal-btn").addEventListener("click", function() {
    document.getElementById("modal-window").classList.remove("open")
});

/* Отобразить всплывающее меню */
document.getElementById("materials-btn").addEventListener("click", function() {
    document.getElementById("materials-list").classList.add("open")
});

/* Скрыть всплывающее меню */
document.getElementById("materials-close").addEventListener("click", function() {
    document.getElementById("materials-list").classList.remove("open")
});