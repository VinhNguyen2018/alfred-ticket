const BASE_URL = '/api/v1/orders';

// function callExecuter() {
//   var price = document.querySelector(".price").innerText;
//   var quantity = document.querySelector(".quantity").innerText;
//   var category = document.querySelector(".category").innerText;
//   Rails.ajax({
//     url: "/orders",
//     type: "POST",
//     data: `total_price=${price}&quantity=${quantity}&category=${category}`,
//     success: function(data) {
//       console.log(data);
//     }
//   });
// }


// $(document).on("click","#executer-button",callExecuter());

function createOrder() {
  const artist = document.getElementById("artist_name").innerText
  const price = parseInt(document.querySelector(".price").innerText);
  const quantity = parseInt(document.querySelector(".quantity").innerText);
  const category = document.querySelector(".category").innerText;
  const csrfToken = document.querySelector('meta[name="csrf-token"]').attributes.content.value;
  const url = `${BASE_URL}`;
  const body = {
    "artist_name": artist,
    "total_price": price,
    "quantity": quantity,
    "category": category
   }; // ES6 destructuring
  const promise = fetch(url, {
    method: 'POST',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json',
      'X-CSRF-Token': csrfToken
    },
    body: JSON.stringify(body),
    credentials: 'same-origin'
  }).then(r => r.json());

}

const submitOrder = () => {
  const submit = document.querySelector(".submit-order");
  submit.addEventListener("click", (event) => {
    createOrder();
  })
}

export { submitOrder };
