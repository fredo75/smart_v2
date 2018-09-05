import "bootstrap";

import {iconAnimation} from '../components/home';
iconAnimation();

// import {textAnimation} from '../components/home';
// textAnimation();

import {selectCategory} from '../components/eco_action';

selectCategory()


import{formSlider} from '../components/form_slider';
 if (document.getElementById('step_1')){
  formSlider();
 }


import {testChart} from '../components/chart';
testChart();


// import {calculEcoAction} from '../components/eco_action';
// if () {
// calculEcoAction();
// }


import {progressBar} from '../components/progressBar';
if (document.getElementById('container_trash')) {
progressBar();
}


import {calculEcoAction} from '../components/eco_action';

calculEcoAction();

import {toggleAddedSurvey} from '../components/eco_action';

if (document.querySelector(".container-card")) {
  toggleAddedSurvey();
}

import {previewImage} from '../components/preview_image';


import {openNavigation} from '../components/navigation';
  if (document.querySelector('.planet-navbar')){
    openNavigation();
  }

previewImage();
