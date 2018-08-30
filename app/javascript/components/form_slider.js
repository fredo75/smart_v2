function formSlider() {
  const nextButton1 = document.getElementById('step_1_button');
  const nextButton2 = document.getElementById('step_2_button');
  const step_1 = document.getElementById('step_1');
  const step_2 = document.getElementById('step_2');
  const step_3 = document.getElementById('step_3');
  const step_4 = document.getElementById('step_4');
  const step_5 = document.getElementById('step_5');
  const step_6 = document.getElementById('step_6');

    nextButton1.addEventListener('click', (event) => {
      step_1.classList.add("hidden");
      step_2.classList.remove("hidden");
    })
    nextButton2.addEventListener('click', (event) => {
      step_2.classList.add("hidden");
      step_3.classList.remove("hidden");
    });
}

export {formSlider};
