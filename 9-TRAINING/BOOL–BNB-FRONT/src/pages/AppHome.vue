<script>
import HomeBnb from "../components/HomeBnb.vue";
export default {
  name: "AppHome",
  components: {
    HomeBnb,
  },
};
</script>
<template>
  <h1>APPARTAMENTI SPONSORIZZATI</h1>
  <button>
    <router-link :to="{ name: 'home.appartments' }"
      >Ricerca avanzata</router-link
    >
  </button>
  <HomeBnb />
</template>
<style lang="scss">
* {
  margin: 0;
}
</style>
