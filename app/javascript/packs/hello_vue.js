import { createApp } from "vue";
import App from "../app.vue";
import '../../../v-calendar/dist/style.css';
import { SetupCalendar, Calendar, DatePicker } from 'v-calendar';

document.addEventListener("DOMContentLoaded", () => {
  const app = createApp(App);
  const datePicker = document.getElementById('input_date');
  app.mount("#vue-app");
  app.use(SetupCalendar, {});
  app.component('Calendar', Calendar);
  app.component('DatePicker', DatePicker);
  document.getElementById('submit_btn').addEventListener('click', () => {
    
    window.location.href = 'http://localhost:3000/reports/new/?='+datePicker.value ;
  });
});