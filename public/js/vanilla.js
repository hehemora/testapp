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

document.getElementById("modal-close").addEventListener("click", function(){
    document.getElementById("modal-window").classList.remove("open")
});


/* Список материалов */

const materialsBtn = document.getElementById("materials-btn")
const materials = document.getElementById("materials-list")

materialsBtn.addEventListener('click', () => {
    if (materials.classList.contains('open') == true) {
        materials.classList.remove('open');
    }
    else {
        materials.classList.add('open')
    }
});

document.getElementById("materials-close").addEventListener('click', function() {
    document.getElementById("materials-list").classList.remove('open')
});
