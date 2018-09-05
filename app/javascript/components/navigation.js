function openNavigation() {
  const earth = document.querySelector(".planet-navbar");
  earth.addEventListener('click', (event) => {
    earth.classList.toggle("open");
    const buttons = document.querySelectorAll(".button-navbar");
    buttons.forEach((button) =>{
      button.classList.toggle("open");
    });
  });
}

export {openNavigation};


// function hideSave() {
//   const save_1 = querySelectorAll(".button_save")
//   save_1.classList.add("hidden")
// }


