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