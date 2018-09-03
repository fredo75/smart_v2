import ProgressBar from 'progressbar.js'

function progressBar () {

const container_food = document.querySelector('#container_food');
const bar_one = new ProgressBar.Circle(container_food, {
  strokeWidth: 6,
  easing: 'easeInOut',
  duration: 1400,
  color: '#4ef037',
  trailColor: '#eee',
  trailWidth: 1,
  svgStyle: null
});
bar_one.animate(1.0);

const container_transport = document.querySelector('#container_transport');
const bar_two = new ProgressBar.Circle(container_transport, {
  strokeWidth: 6,
  easing: 'easeInOut',
  duration: 1400,
  color: '#4ef037',
  trailColor: '#eee',
  trailWidth: 1,
  svgStyle: null
});
bar_two.animate(1.0);

const container_trash = document.querySelector('#container_trash');
const bar_three = new ProgressBar.Circle(container_trash, {
  strokeWidth: 6,
  easing: 'easeInOut',
  duration: 1400,
  color: '#4ef037',
  trailColor: '#eee',
  trailWidth: 1,
  svgStyle: null
});
bar_three.animate(0.8);


const container_housing = document.querySelector('#container_housing');
const bar_four = new ProgressBar.Circle(container_housing, {
  strokeWidth: 6,
  easing: 'easeInOut',
  duration: 1400,
  color: '#4ef037',
  trailColor: '#eee',
  trailWidth: 1,
  svgStyle: null
});
bar_four.animate(1.0);
}

export {progressBar};
