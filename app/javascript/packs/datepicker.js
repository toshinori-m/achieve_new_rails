// import hello_vue from "./hello_vue";
// new hello_vue(datePicker.value);
//   window.addEventListener("load",function() {
//     let datepicker_value = document.getElementById('date_value');
//     datepicker_value = DatePicker.value;
//   });

document.addEventListener("DOMContentLoaded", () => {
  const datePicker = document.getElementById('input_date');
  document.getElementById('submit_btn').addEventListener('click', () => {
  window.location.href = 'http://localhost:3000/reports/new/?datepicker_value=' + datePicker.value;
  });
});