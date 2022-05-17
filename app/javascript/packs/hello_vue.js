import { createApp } from "vue";
import App from "../app.vue";
import VCalendar from 'v-calendar';
Vue.use(VCalendar)

document.addEventListener("DOMContentLoaded", () => {
  const app = createApp(App);
  app.mount("#vue-app");
});