<template>
  <v-calendar />
  <v-date-picker v-model="date" />
  <p>
    {{ message }}
  </p>
</template>

<script>
export default {
data() {
  return {
    attributes: [
      {
        key: 'today',
        highlight: true,
        dates: new Date()
      }
    ]
  }
}
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: left;
}
</style>