<template>
  <div id="app">
    <p>{{ message }}</p>
    <p>{{ users }}</p>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data: function () {
    return {
      message: "Hello Vue!",
      users: []
    }
  },
  mounted () {
    axios
      .get('/api/v1/users.json')
      .then(response => (this.users = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
