import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  connect() {
    console.log("participation js")
  const modal = document.getElementById('participation-modal');
  const participateButton = document.getElementById('participate-button');
  const closeModal = document.querySelector('.modal .close');
  const cancelParticipation = document.getElementById('cancel-participation');
  const participateForm = document.getElementById('participate-form');
  if (participateButton) {
    participateButton.addEventListener('click', () => {
      const eventId = participateButton.getAttribute('data-event-id');
      participateForm.querySelector('input[name="event_id"]').value = eventId;
      modal.style.display = 'block';
    });
  }
  if (closeModal) {
    closeModal.addEventListener('click', () => {
      modal.style.display = 'none';
    });
  }
  if (cancelParticipation) {
    cancelParticipation.addEventListener('click', () => {
      modal.style.display = 'none';
    });
  }
  window.addEventListener('click', (event) => {
    if (event.target === modal) {
      modal.style.display = 'none';
    }
  });

  }
}
