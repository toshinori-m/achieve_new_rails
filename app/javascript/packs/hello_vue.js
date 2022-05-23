import { createApp } from "vue";
import App from "../app.vue";
import 'v-calendar/dist/style.css';


document.addEventListener("DOMContentLoaded", () => {
  const app = createApp(App);
  app.mount("#vue-app");
});
