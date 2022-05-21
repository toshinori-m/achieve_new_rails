<template>
  <v-app>
    <v-content>
      <v-row justify="center">
        <v-col cols="8">
          <v-text-field v-model="value" single-line>
            <template v-slot:append-outer>
              <date-picker v-model="value"/>
            </template>
          </v-text-field>
        </v-col>
        <v-col cols="8">
          <p>日付： {{ value }}</p>
        </v-col>
      </v-row>
    </v-content>
  </v-app>
</template>

<script>
import DatePicker from "./packs/DatePicker";

export default {
  name: "App",
  packs: {
    DatePicker
  },
  data() {
    return {
      value: null
    };
  }
};
</script>