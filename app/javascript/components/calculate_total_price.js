const calculatePrice = () => {
  const quantity = document.getElementById('quantity');
  const price = document.querySelector(".right-category.selected-price");
  quantity.addEventListener("change",(event) => {
    const priceTicket = parseInt(document.querySelector(".right-category.selected-price").innerText);
    const quantityTicket = parseInt(document.getElementById('quantity').options[document.getElementById('quantity').selectedIndex].text);
    const totalPrice = quantityTicket * priceTicket;
    console.log(totalPrice);
  });
  price.addEventListener("change",(event) => {
    const priceTicket = parseInt(document.querySelector(".right-category.selected-price").innerText);
    const quantityTicket = parseInt(document.getElementById('quantity').options[document.getElementById('quantity').selectedIndex].text);
    const totalPrice = quantityTicket * priceTicket;
    console.log(totalPrice);
  });
}


