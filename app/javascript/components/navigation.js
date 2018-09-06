function openNavigation() {
  let earth = document.querySelector(".click-container");
  let earth_2 = document.querySelector(".planet-navbar")

  earth.addEventListener('click', (event) => {
    earth.classList.toggle("open");
    earth_2.classList.toggle("open");
    let buttons = document.querySelectorAll(".button-navbar");
    buttons.forEach((button) =>{
      button.classList.toggle("open");
    });
  });
}

export {openNavigation};


// function hideSave() {
//   let save_1 = querySelectorAll(".button_save")
//   save_1.classList.add("hidden")
// }


