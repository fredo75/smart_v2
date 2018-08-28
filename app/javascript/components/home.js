function homeAnimation () {

  const planet = document.querySelector('.planet');
  console.log(planet);
  const food = document.querySelector ('.deg0');
  const transport = document.querySelector ('.deg180');
  const trash = document.querySelector ('.deg90');
  const house = document.querySelector ('.deg270');
  planet.addEventListener('click', () => {
    transport.classList.toggle('move');
    food.classList.toggle('move');
    trash.classList.toggle('move');
    house.classList.toggle('move');
    planet.classList.toggle('move');
  })
}

export {homeAnimation}
