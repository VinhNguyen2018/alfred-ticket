import "bootstrap";
import { scrollMoveNav } from '../components/navbar_scroll';

scrollMoveNav();

import { initializeClock } from '../components/countdown';
import { getTimeRemaining } from '../components/countdown';
if (document.getElementById('deadline')) {
  const end_date = document.getElementById("deadline");
  const deadline = new Date(Date.parse(end_date.innerText));
  getTimeRemaining(deadline);
  initializeClock('clockdiv', deadline);
}

import { selectCategory } from '../components/select_category';
if (document.querySelector(".border-top")) {
  selectCategory();
}
