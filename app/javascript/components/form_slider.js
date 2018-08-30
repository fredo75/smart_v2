function formSlider() {
  const nextButton1 = document.getElementById('step_1_button');
  const nextButton2 = document.getElementById('step_2_button');
  const nextButton3 = document.getElementById('step_3_button');
  const nextButton4 = document.getElementById('step_4_button');
  const nextButton5 = document.getElementById('step_5_button');
  const nextButton6 = document.getElementById('step_6_button');
  const step_1 = document.getElementById('step_1');
  const step_2 = document.getElementById('step_2');
  const step_3 = document.getElementById('step_3');
  const step_4 = document.getElementById('step_4');
  const step_5 = document.getElementById('step_5');
  const step_6 = document.getElementById('step_6');

    nextButton1.addEventListener('click', (event) => {
      step_1.classList.add("hidden");
      step_2.classList.remove("hidden");
    });
    nextButton2.addEventListener('click', (event) => {
      step_2.classList.add("hidden");
      step_3.classList.remove("hidden");
    });
    nextButton3.addEventListener('click', (event) => {
      step_3.classList.add("hidden");
      step_4.classList.remove("hidden");
    });
    nextButton4.addEventListener('click', (event) => {
      step_4.classList.add("hidden");
      step_5.classList.remove("hidden");
    });
    nextButton5.addEventListener('click', (event) => {
      step_5.classList.add("hidden");
      step_6.classList.remove("hidden");
    });
}

export {formSlider};
