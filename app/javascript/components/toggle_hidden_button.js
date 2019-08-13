const toggle_hidden_button = () => {
  const blockUserOrders = document.querySelector(".user-orders");
  const blockUserProfile = document.querySelector(".user-infos");
  const buttonOrder = document.querySelector(".button-order");
  const buttonProfile = document.querySelector(".button-profile");
  buttonOrder.addEventListener("click", (event) => {
    buttonProfile.classList.remove("active");
    buttonOrder.classList.add("active");
    blockUserOrders.classList.remove("hidden");
    blockUserProfile.classList.add("hidden");
  })
  buttonProfile.addEventListener("click", (event) => {
    buttonProfile.classList.add("active");
    buttonOrder.classList.remove("active");
    blockUserOrders.classList.add("hidden");
    blockUserProfile.classList.remove("hidden");
  })
}

export { toggle_hidden_button };
