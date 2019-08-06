import $ from 'jquery';
require "json";

function callExecuter() {
  var price = document.querySelector(".price").innerText;
  var quantity = document.querySelector(".quantity").innerText;
  var category = document.querySelector(".category").innerText;
  $.ajax({
    type:'POST',
    url:'/orders',
    data: { total_price: price,
            quantity: quantity,
            category: category
          },
    success: function(data) {
      console.log(date);
      // Do something with the response
    }
  });
}

$(document).on("click","#executer-button",callExecuter());

// const submitOrder = () => {
//   const submit = document.querySelector(".submit-order");
//   submit.addEventListener("click", (event) => {
//     callExecuter();
//   })
// }

// export { submitOrder };
