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
  