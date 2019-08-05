function getCatAndPriceAndQuantity() {
  var category = document.querySelector(".left-category.selected-category").innerText;
  var quantity = document.getElementById('quantity');
  var quantityTicket = parseInt(quantity.options[document.getElementById('quantity').selectedIndex].text);
  var price = document.querySelector(".right-category.selected-price");
  var priceTicket = parseInt(price.innerText);
  var totalPrice = quantityTicket * priceTicket;
  return {
    'category': category,
    'total': totalPrice,
    'quantity': quantityTicket,
    'price': priceTicket,
  };
}

function initializeCalculation() {
  var displayCalcul = document.getElementById('calculation-total-price');
  var categorySpan = displayCalcul.querySelector('.category');
  var quantitySpan = displayCalcul.querySelector('.quantity');
  var priceSpan = displayCalcul.querySelector('.price');
  var totalSpan = displayCalcul.querySelector('.total');

  function updateCalcul() {
    var t = getCatAndPriceAndQuantity();

    categorySpan.innerHTML = t.category;
    quantitySpan.innerHTML = t.quantity;
    priceSpan.innerHTML = t.price;
    totalSpan.innerHTML = t.total;
  }
  updateCalcul();
}

const updateOnclick = () => {
  const blocks = document.querySelectorAll(".border-top");
  blocks.forEach((item) => {
    item.addEventListener("click",(event) => {
      initializeCalculation();
    })
  })
}

const updateOnChange = () => {
  const quantityOnChange = document.getElementById('quantity');
  quantityOnChange.addEventListener("change", (event) => {
    initializeCalculation();
  })
}

export { initializeCalculation, updateOnclick, updateOnChange };
