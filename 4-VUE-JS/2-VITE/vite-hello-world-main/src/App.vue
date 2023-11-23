<!-- **************************
SCRIPT
************************** -->
<script>
// 1. importare il componente
import AppTitle from "./components/AppTitle.vue";

export default {
  components: {
    // 2. registrare il componente che abbiamo importato
    AppTitle,
  },
  data() {
    return {};
  },
};
</script>

<!-- **************************
TEMPLATE
************************** -->

<template>
  <div>
    <img
      src="./assets/LOGO CIANURO CODING_ICONA ROUND 25X25.png"
      class="logo"
      alt="Logo Simone Cianuro Buzzeo"
    />
    <AppTitle />
    <img
      src="./assets/LOGO CIANURO CODING_ICONA ROUND 25X25.png"
      class="logo"
      alt="Logo Simone Cianuro Buzzeo"
    />
  </div>
</template>

<style scoped>
.logo {
  height: 12em;
  padding: 1reem;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
</style>
