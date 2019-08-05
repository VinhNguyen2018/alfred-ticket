const selectCategory = () => {
  const blocks = document.querySelectorAll(".border-top");
  blocks.forEach((item) => {
    item.addEventListener("click", (event) => {
      const prices = document.querySelectorAll(".right-category");
      const categories = document.querySelectorAll(".left-category");
      prices.forEach((price) => {
        price.classList.remove("selected-price");
      })
      categories.forEach((category) => {
        category.classList.remove("selected-category");
      })
      blocks.forEach((item) => {
        item.classList.remove("selected");
      });
      item.classList.add("selected");
      item.querySelector(".left-category").classList.add("selected-category");
      item.querySelector(".right-category").classList.add("selected-price");
    });
  });
}

export { selectCategory };

