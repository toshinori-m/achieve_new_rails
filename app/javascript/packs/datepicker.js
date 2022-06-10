document.addEventListener("DOMContentLoaded", () => {
  const datePicker = document.getElementById('input_date');
  document.getElementById('submit_btn').addEventListener('click', () => {
  window.location.href = 'http://localhost:3000/reports/new/?datepicker_value=' + datePicker.value;
  });
});