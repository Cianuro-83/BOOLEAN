<template>
  <Header />
  <Hero />
  <CardBlock />
  <WorkingProcess />
  <WorkWithUs />
  <Example />
  <Footer />
  <LateralBar />
</template>

<script>
import CardBlock from "./components/CardBlock.vue";
import WorkWithUs from "./components/WorkWithUs.vue";
import Header from "./components/Header.vue";
import WorkingProcess from "./components/WorkingProcess.vue";
import Example from "./components/Example.vue";
import Footer from "./components/Footer.vue";
import Hero from "./components/Hero.vue";
import LateralBar from "./components/LateralBar.vue";
export default {
  components: {
    CardBlock,
    WorkWithUs,
    Header,
    WorkingProcess,
    Example,
    Footer,
    Hero,
    LateralBar,
    // **************************
    // FINE COMPONETS
  },
  // **************************
};
</script>

<style lang="scss">
@use "./style/general.scss";
</style>
