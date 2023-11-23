<!-- **************************
js
************************** -->
<script>
export default {
  data() {
    return {
      appTitle: "Ciao, sono Simone Cianuro Buzzeo...",
      description: "... e questa è la mia mia prima App con Vite",
    };
  },
};
</script>
<!-- **************************
HTML
************************** -->
<template>
  <h1 class="vite">
    {{ appTitle }}
  </h1>
  <h2 class="prova">{{ description }}</h2>
</template>

<!-- **************************
CSS
************************** -->
<style>
.vite {
  color: white;
  font-size: 45px;
  font-weight: bolder;
}
.prova {
  text-decoration: underline;
  color: greenyellow;
  font-weight: bold;
  font-size: 25px;
}
</style>
