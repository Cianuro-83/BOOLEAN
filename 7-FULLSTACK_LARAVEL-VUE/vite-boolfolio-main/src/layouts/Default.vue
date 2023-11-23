<template>
  <NavBar />
  <main>
    <slot />
  </main>
</template>

<script>
import NavBar from "../components/NavBar.vue";
export default {
  components: {
    NavBar,
  },
};
</script>

<style lang="scss" scoped>
@use "../style/partials//variables" as *;
</style>
