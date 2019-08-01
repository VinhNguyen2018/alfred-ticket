
const scrollMoveNav = () => {
  const navbar = document.querySelector('.navbar-lewagon')

  window.addEventListener('scroll',(event) => {
    const scrollTop = event.path[1].scrollY;
    if (scrollTop >= 1) {
        navbar.classList.add('fixed');
      } else {
        // sinon, on l'enlève
        navbar.classList.remove('fixed');
      }
  })
}


export { scrollMoveNav };
