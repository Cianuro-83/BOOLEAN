<template>
  <footer>
    <NavBar />
  </footer>
</template>

<script>
import NavBar from "./NavBar.vue";
export default {
  components: {
    NavBar,
  },
};
</script>

<style lang="scss">
footer {
  color: antiquewhite;
  padding: 15px;
  a {
    color: antiquewhite;
  }
}
</style>
