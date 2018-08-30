function selectCategory() {

  const images = document.querySelectorAll(".button-icons img");
  images.forEach((img) => {
    img.addEventListener("click", (event) => {
      images.forEach((x) => {
        x.classList.remove("selected");
      });
    const category = event.target.dataset.name ;
    event.target.classList.add("selected");
    document.getElementById('eco_action_eco_category').value = category;
    });
  });
}

export {selectCategory}
