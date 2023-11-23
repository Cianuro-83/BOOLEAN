<!-- **************************
JAVASCRIPT
************************** -->

<script>
// **************************
// IMPORT
// **************************
import AppHeader from "./components/AppHeader.vue";
import AppContent from "./components/AppContent.vue";
import AppFooter from "./components/AppFooter.vue";
//********************
// EXPORT
//******************** */
export default {
  components: {
    AppHeader,
    AppContent,
    AppFooter,
  },
};
</script>

<!-- **************************
HTML
************************** -->
<template>
  <AppHeader />
  <AppContent />
  <AppFooter />
</template>

<!-- **************************
STYLE
************************** -->
<style lang="scss">
@use "./style/general.scss";
</style>
