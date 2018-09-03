import ProgressBar from 'progressbar.js'

function progressBar () {

const container_food = document.querySelector('#container_food');
const answers_food = JSON.parse(container_food.dataset.food)/3;
const bar_one = new ProgressBar.Circle(container_food, {
  strokeWidth: 6,
  easing: 'easeInOut',
  duration: 1500,
  color: '#4ef037',
  svgStyle: null
});
bar_one.animate(answers_food);

const container_transport = document.querySelector('#container_transport');
const answers_transport = JSON.parse(container_transport.dataset.transport)/3;
const bar_two = new ProgressBar.Circle(container_transport, {
  strokeWidth: 6,
  easing: 'easeInOut',
  duration: 1500,
  color: '#4ef037',
  svgStyle: null
});
bar_two.animate(answers_transport);

const container_trash = document.querySelector('#container_trash');
const answers_trash = JSON.parse(container_trash.dataset.trash)/2;
const bar_three = new ProgressBar.Circle(container_trash, {
  strokeWidth: 6,
  easing: 'easeInOut',
  duration: 1500,
  color: '#4ef037',
  svgStyle: null
});
bar_three.animate(answers_trash);

const container_housing = document.querySelector('#container_housing');
const answers_housing = JSON.parse(container_housing.dataset.housing)/6;
const bar_four = new ProgressBar.Circle(container_housing, {
  strokeWidth: 6,
  easing: 'easeInOut',
  duration: 1500,
  color: '#4ef037',
  svgStyle: null
});
bar_four.animate(answers_housing);
}

export {progressBar};
