const calculateFastDelivery = () => {
  const blockVat = document.querySelector(".TVA");
  const blockTtc = document.querySelector(".TTC");
  const quantity = parseInt(document.getElementById("quantity-order").innerText);
  const price = parseFloat(parseFloat(document.getElementById("unit-price").innerText.replace(',','.')).toFixed(2));
  const managementFees = parseFloat(parseFloat(quantity*price*40/100).toFixed(2));
  const FastDeliveryFees = parseInt(document.getElementById("fast-delivery-fee").innerText);
  const vatAmount = parseFloat(parseFloat((quantity*price+managementFees+FastDeliveryFees)*20/100).toFixed(2));
  const totalPrice = parseFloat(quantity*price+managementFees+FastDeliveryFees+vatAmount).toFixed(2);
  const frVatAmount = (vatAmount + '').replace('.',',');
  const frTotalPrice = (totalPrice + '').replace('.',',');
  blockVat.innerHTML = frVatAmount;
  blockTtc.innerHTML = frTotalPrice;
}

const calculateStandardDelivery = () => {
  const blockVat = document.querySelector(".TVA");
  const blockTtc = document.querySelector(".TTC");
  const quantity = parseInt(document.getElementById("quantity-order").innerText);
  const price = parseFloat(parseFloat(document.getElementById("unit-price").innerText.replace(',','.')).toFixed(2));
  const managementFees = parseFloat(parseFloat(quantity*price*40/100).toFixed(2));
  const vatAmount = parseFloat(parseFloat((quantity*price+managementFees)*20/100).toFixed(2));
  const totalPrice = parseFloat(quantity*price+managementFees+vatAmount).toFixed(2);
  const frVatAmount = (vatAmount + '').replace('.',',');
  const frTotalPrice = (totalPrice + '').replace('.',',');
  blockVat.innerHTML = frVatAmount;
  blockTtc.innerHTML = frTotalPrice;
}


const applyCalculationDelivery = () => {
  const fastDelivery = document.getElementById("fast-delivery");
  const standardDelivery = document.getElementById("standard-delivery");

  fastDelivery.addEventListener("click", (event) => {
    calculateFastDelivery();
  });

  standardDelivery.addEventListener("click", (event) => {
    calculateStandardDelivery();
  });
}


export { applyCalculationDelivery }
