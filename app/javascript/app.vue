<template>
  <p>
    {{ date }}
  </p>
</template>
<script>
export default {
  computed: {
    date: function(){
      return new Date();
    }
  }
}
</script>