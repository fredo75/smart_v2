function iconAnimation () {

  const planet = document.querySelector('.planet');
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

function textAnimation () {
  const food = document.querySelector ('.deg0');
  const transport = document.querySelector ('.deg180');
  const trash = document.querySelector ('.deg90');
  const house = document.querySelector ('.deg270');
  const text = document.getElementById('titre_category')

  food.addEventListener('mouseover', () => {
    text.textContent="Food";
  })

  food.addEventListener('mouseout', () => {
    text.textContent="";
  })

  transport.addEventListener('mouseover', () => {
    text.textContent="Transport";
  })
  transport.addEventListener('mouseout', () => {
    text.textContent="";
  })

  house.addEventListener('mouseover', () => {
    text.textContent="Housing";
  })
  house.addEventListener('mouseout', () => {
    text.textContent="";
  })
  trash.addEventListener('mouseout', () => {
    text.textContent="";
  })
  trash.addEventListener('mouseover', () => {
    text.textContent="Trash";
  })
}

export {iconAnimation}
export {textAnimation}
