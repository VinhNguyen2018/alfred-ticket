const calculateFastDelivery = () => {
  const quantity = parseInt(document.getElementById("quantity-order").innerText);
  const price = parseInt(document.getElementById("unit-price").innerText);
  const managementFees = quantity*price*40/100;
  const FastDeliveryFees = 5;
  const vatAmount = (quantity*price+managementFees+FastDeliveryFees)*20/100;
  const totalPrice = quantity*price+managementFees+FastDeliveryFees+vatAmount
  const blockVat = document.querySelector(".TVA");
  const blockTtc = document.querySelector(".TTC");
  blockVat.innerHTML = parseFloat(vatAmount).toFixed(2);
  blockTtc.innerHTML = parseFloat(totalPrice).toFixed(2);
}

const calculateStandardDelivery = () => {
  const quantity = parseInt(document.getElementById("quantity-order").innerText);
  const price = parseInt(document.getElementById("unit-price").innerText);
  const managementFees = quantity*price*40/100;
  const vatAmount = (quantity*price+managementFees)*20/100;
  const totalPrice = quantity*price+managementFees+vatAmount;
  const blockVat = document.querySelector(".TVA");
  const blockTtc = document.querySelector(".TTC");
  blockVat.innerHTML = parseFloat(vatAmount).toFixed(2);
  blockTtc.innerHTML = parseFloat(totalPrice).toFixed(2);
}


const selectFastDelivery = () => {
  const fastDelivery = document.getElementById("fast-delivery");

  fastDelivery.addEventListener("click", (event) => {
    calculateFastDelivery();
  })
}

const selectStandardDelivery = () => {
  const standardDelivery = document.getElementById("standard-delivery");

  standardDelivery.addEventListener("click", (event) => {
    calculateStandardDelivery();
  })
}

export { selectFastDelivery, selectStandardDelivery }
