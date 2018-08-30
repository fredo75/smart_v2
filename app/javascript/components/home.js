function iconAnimation () {

  const planet = document.querySelector('.planet');
  const food = document.querySelector ('.deg0');
  const transport = document.querySelector ('.deg180');
  const trash = document.querySelector ('.deg90');
  const house = document.querySelector ('.deg270');
  const header = document.querySelector('.header');

  const text = document.getElementById('pick');

  if (planet) {
  planet.addEventListener('touchend', () => {
    if (transport) {
      transport.classList.toggle('move');
    }
    if (food) {
      food.classList.toggle('move');
    }
    if (trash) {
      trash.classList.toggle('move');
    }
    if (house) {
      house.classList.toggle('move');
    }
    if (header) {
      header.classList.toggle('hide_title');
    }

    if (text) {
      text.classList.toggle('show')
    }
    planet.classList.toggle('move');
  })
  }


}

// function textAnimation () {
//   const food = document.querySelector ('.deg0');
//   const transport = document.querySelector ('.deg180');
//   const trash = document.querySelector ('.deg90');
//   const house = document.querySelector ('.deg270');
//   const text = document.getElementById('titre_category')

//   if (food) {
//     food.addEventListener('mouseover', () => {
//       text.textContent="Food";
//     })
//     food.addEventListener('mouseout', () => {
//       text.textContent="";
//     })
//   }

//   if (transport) {
//     transport.addEventListener('mouseover', () => {
//       text.textContent="Transport";
//     })
//     transport.addEventListener('mouseout', () => {
//       text.textContent="";
//     })
//   }

//   if (house) {
//     house.addEventListener('mouseover', () => {
//       text.textContent="Housing";
//     })
//     house.addEventListener('mouseout', () => {
//       text.textContent="";
//     })
//   }

//   if(trash){
//   trash.addEventListener('mouseout', () => {
//     text.textContent="";
//   })
//   trash.addEventListener('mouseover', () => {
//     text.textContent="Trash";
//   })

//   }
// }

export {iconAnimation}
// export {textAnimation}
