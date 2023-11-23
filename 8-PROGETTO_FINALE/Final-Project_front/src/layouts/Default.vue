<script>
import HeaderComponent from "../components/Header.vue";
import FooterComponent from "../components/Footer.vue";

export default {
  components: {
    HeaderComponent,
    FooterComponent,
  },
};
</script>

<template>
  <header class="main-header">
    <HeaderComponent></HeaderComponent>
  </header>

  <main class="main-content">
    <slot />
  </main>

  <footer class="main-footer">
    <FooterComponent></FooterComponent>
  </footer>
</template>

<style lang="scss" scoped>
@use "../style/partials/variables.scss" as *;

.main-header {
  position: fixed;
  top: 0;
  z-index: 1;
  width: 100%;
}

.main-content {
  margin-top: 7%;
}

.main-footer {
  margin-top: 100px;
}

@media only screen and (max-width: 930px) {
  .main-content {
    margin-top: 12%;
  }
}


@media only screen and (max-width: 774px) {
  .main-content {
    margin-top: 12%;
  }
}

@media only screen and (max-width: 486px) {
  .main-content {
    margin-top: 16%;
  }
}
</style>
