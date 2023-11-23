<!-- **************************
JAVASCRIPT
************************** -->

<script>
// **************************
// IMPORT
// **************************
import AppHeader from "./components/AppHeader.vue";
import AppMain from "./components/AppMain.vue";
import AppBluIcons from "./components/AppBluIcons.vue";
import AppFooter from "./components/AppFooter.vue";
//********************
// EXPORT
//******************** */
export default {
  components: {
    AppHeader,
    AppMain,
    AppBluIcons,
    AppFooter,
  },
};
</script>

<!-- **************************
HTML
************************** -->
<template>
  <AppHeader />
  <AppMain />
  <AppBluIcons />
  <AppFooter />
</template>

<!-- **************************
STYLE
************************** -->
<style lang="scss">
@use "./style/general.scss";
</style>
