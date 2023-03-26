const recruitingBtn = document.querySelector('.mate_board_recruiting');
const dropdownMenu = document.querySelector('.dropdown-menu');

recruitingBtn.addEventListener('click', function() {
  dropdownMenu.style.display = 'block';
});

const bookmarkIcon = document.querySelector('.mate_board_bookMark>i');

bookmarkIcon.addEventListener('click', function() {
  bookmarkIcon.classList.remove('fa-regular fa-bookmark');
  bookmarkIcon.classList.add('fa-solid fa-bookmark');
});
