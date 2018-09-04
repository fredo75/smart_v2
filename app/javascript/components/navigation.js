function openNavigation() {
  const earth = document.querySelector(".planet-navbar");
  earth.addEventListener('click', (event) => {
    earth.classList.add("open");
    const buttons = document.querySelectorAll(".button-navbar");
    buttons.forEach((button) =>{
      button.classList.add("open");
    });
  });
}

export {openNavigation};

