function appendToResult(value) {
    document.querySelector('.result').value += value;
  }
  
  function calculate() {
    var result = document.querySelector('.result').value;
    var answer = eval(result);
    document.querySelector('.result').value = answer;
  }
  
  // Agregar el evento click al botón de borrado
  document.getElementById("clear").addEventListener("click", function() {
    // Borrar el contenido del campo de texto
    document.querySelector('.result').value = "";
  });
  
  const openPopupButton = document.getElementById('open-popup');
const closePopupButton = document.getElementById('close-popup');
const popupOverlay = document.querySelector('.popup-overlay');
const popup = document.querySelector('.popup');

openPopupButton.addEventListener('click', () => {
  popup.classList.add('show');
  popupOverlay.classList.add('show');
});

closePopupButton.addEventListener('click', () => {
  popup.classList.remove('show');
  popupOverlay.classList.remove('show');
});
