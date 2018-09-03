function selectCategory() {

  const images = document.querySelectorAll(".button-icons img");
  images.forEach((img) => {
    img.addEventListener("click", (event) => {
      images.forEach((x) => {
        x.classList.remove("selected");
      });
    const category = event.target.dataset.name ;
    event.target.classList.add("selected");
    document.getElementById('eco_action_eco_category').value = category;
    });
  });
}

export {selectCategory}

function calculEcoAction() {

}
export {calculEcoAction}


function toggleAddedSurvey() {
  const allforms = document.querySelectorAll(".form-toggle");
  allforms.forEach((formItem)=> {
    const button = formItem.querySelector("input[type=checkbox]")
    button.addEventListener("change", (event) => {
      formItem.submit();
    })
  })
}
export {toggleAddedSurvey}
