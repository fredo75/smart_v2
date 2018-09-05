function openNavigation() {
  let earth = document.querySelector(".planet-navbar");
  earth.addEventListener('click', (event) => {
    console.log('coucou')
    earth.classList.toggle("open");
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


