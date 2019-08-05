const backgroundColorOnClick = () => {
  const categories = document.querySelectorAll(".border-top");
  categories.forEach((item) => {
    item.addEventListener("click", (event) => {
      categories.forEach((item) => {
        item.classList.remove("selected");
      });
      item.classList.add("selected");;
    });
  });
}

export { backgroundColorOnClick };

