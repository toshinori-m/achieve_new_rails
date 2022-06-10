import { createApp } from "vue";
import App from "../app.vue";
import '../../../v-calendar/dist/style.css';
import { SetupCalendar, Calendar, DatePicker } from 'v-calendar';

document.addEventListener("DOMContentLoaded", () => {
  const app = createApp(App);
  app.mount("#vue-app");
  app.use(SetupCalendar, {});
  app.component('Calendar', Calendar);
  app.component('DatePicker', DatePicker);
});