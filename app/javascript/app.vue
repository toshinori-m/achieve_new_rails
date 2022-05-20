<template>
  <div>
    <v-menu v-model="menu">
      <template v-slot:activator="{ on, attrs }">
        <v-text-field v-model="text" v-bind="attrs" v-on="on" readonly clearable>
        </v-text-field>
      </template>
      <v-date-picker v-model="date" @input="formatDate(YYYY年MM月DD日)">
      </v-date-picker>
    </v-menu>
    date: {{ YYYY年MM月DD日 }}
  </div>
</template>
<script>
  export default {
    data() {
      return {
        menu: "",
        text: "",
        picker: "",
      };
    },
    methods: {
      formatDate(date) {
        if (!date) return null;
        const [year, month, day] = date.split("-");
        this.text = `${year}${month}${day}`;
        this.menu = false;
        return;
      },
    },
  };
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: left;
}
</style>