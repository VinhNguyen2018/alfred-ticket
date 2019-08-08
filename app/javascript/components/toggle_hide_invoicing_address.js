const toggleHideInvoicingAdress = () => {
  const block = document.querySelector(".invoicing");
  const button = document.getElementById("permitted");
  button.addEventListener("click", (event) => {
    block.classList.toggle('hidden');
  })
}

export { toggleHideInvoicingAdress }
