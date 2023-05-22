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


function imprimirTicket() {
  // Crea un elemento div con el contenido del ticket
  var ticketDiv = document.createElement('div');
  ticketDiv.innerHTML = '<h1>Ticket de ejemplo</h1><p>Información del ticket...</p>';

  // Crea una ventana emergente para imprimir el ticket
  var printWindow = window.open('', '_blank');
  printWindow.document.open();
  printWindow.document.write('<html><head><title>Imprimir Ticket</title></head><body>');
  printWindow.document.write(ticketDiv.outerHTML);
  printWindow.document.write('</body></html>');
  printWindow.document.close();

  // Espera a que la ventana emergente esté lista antes de imprimir
  printWindow.onload = function() {
    setTimeout(function() {
      printWindow.print();
      printWindow.close();
    }, 100);
  };
}
