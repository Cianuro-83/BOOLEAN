<!-- **************************
js
************************** -->
<script>
export default {
  data() {
    return {
      jumbotron: "Spero di aver capito bene cosa sia un jumbotron",
    };
  },
};
</script>
<!-- **************************
HTML
************************** -->
<template>
  <h1 class="vite">
    {{ jumbotron }}
  </h1>
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
