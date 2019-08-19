import "bootstrap";
import { scrollMoveNav } from '../components/navbar_scroll';
scrollMoveNav();

import { initializeClock } from '../components/countdown';
import { getTimeRemaining } from '../components/countdown';
if (document.getElementById('clockdiv')) {
  const end_date = document.getElementById("deadline");
  const deadline = new Date(Date.parse(end_date.innerText));
  getTimeRemaining(deadline);
  initializeClock('clockdiv', deadline);
}

import { selectCategory } from '../components/select_category';
if (document.querySelector(".border-top")) {
  selectCategory();
}

import { initializeCalculation, updateOnclick, updateOnChange } from '../components/calculate_total_price';
if (document.getElementById('calculation-total-price')) {
  initializeCalculation();
  updateOnclick();
  updateOnChange();
}
import { toggleHideInvoicingAdress } from '../components/toggle_hide_invoicing_address';
if (document.getElementById("permitted")) {
  toggleHideInvoicingAdress();
}

import { applyCalculationDelivery } from '../components/calculate_TVA_TTC';
if (document.querySelector(".TVA")) {
  applyCalculationDelivery();
}

import { toggle_hidden_button }from '../components/toggle_hidden_button';
if (document.querySelector(".button-ghost")) {
  toggle_hidden_button();
}

// import { submitOrder } from '../components/submit_order';
// if (document.querySelector(".submit-order")) {
//   submitOrder();
// }
