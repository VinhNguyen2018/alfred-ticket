function callExecuter() {
  var price = document.querySelector(".price").innerText;
  var quantity = document.querySelector(".quantity").innerText;
  var category = document.querySelector(".category").innerText;
  $.ajax({
    type:'GET',
    url:'/orders',
    data: { total_price: price,
            quantity: quantity,
            category: category
          }
  });
}

const submitOrder = () => {
  const submit = document.querySelector(".submit-order");
  submit.addEventListener("click", (event) => {
    callExecuter();
  })
}

export { submitOrder };
