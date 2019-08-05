const selectCategory = () => {
  const categories = document.querySelectorAll(".border-top");
  categories.forEach((item) => {
    item.addEventListener("click", (event) => {
      const prices = document.querySelectorAll(".right-category");
      prices.forEach((price) => {
        price.classList.remove("selected-price");
      })
      categories.forEach((item) => {
        item.classList.remove("selected");
      });
      item.classList.add("selected");
      item.querySelector(".right-category").classList.add("selected-price");
    });
  });
}

export { selectCategory };

