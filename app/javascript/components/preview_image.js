function previewImage() {
  const photo = document.getElementById('eco_action_photo');
  if (photo) {
    photo.addEventListener('change', (event) => {
      const preview = document.getElementById('img_prev');
      preview.classList.remove('hidden');

        if (photo.files && photo.files[0]) {
          const reader = new FileReader();

          reader.onload = function (e) {
            const preview = document.getElementById('img_prev');
            preview.src = e.target.result;
          }
          reader.readAsDataURL(photo.files[0]);
        }

    })
  }
}

export {previewImage}
