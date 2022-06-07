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

// export {datePicker_value};
// export default class hello_vue { 
//   constructor(datePicker_value) {
//     this.datePicker_value = datePicker_value;
//   }
// }
// export default datePicker_value;
