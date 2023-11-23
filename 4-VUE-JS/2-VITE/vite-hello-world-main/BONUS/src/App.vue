<!-- **************************
SCRIPT
************************** -->
<script>
// 1. importare il componente
import AppHero from "./components/AppHero.vue";

export default {
  components: {
    // 2. registrare il componente che abbiamo importato
    AppHero,
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
  <div class="jumbotron">
    <div class="container">
      <img
        src="./assets/LOGO CIANURO CODING_ICONA ROUND 25X25.png"
        class="logo"
        alt="Logo Simone Cianuro Buzzeo"
      />
      <AppHero />
      <img
        src="./assets/LOGO CIANURO CODING_ICONA ROUND 25X25.png"
        class="logo"
        alt="Logo Simone Cianuro Buzzeo"
      />
    </div>
  </div>
</template>
<!-- **************************
  CSS
************************** -->
<style scoped>
.logo {
  height: 12em;
  padding: 1reem;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.jumbotron {
  padding: 30px;
  background-color: #862323;
}

.container {
  width: 1024px;
  margin: 0 auto;
  padding: 25px 15px;
}

.jumbotron .container {
  max-width: 100%;
  background-color: rgba(255, 255, 255, 0.456);
}
</style>
