<template>
  <header>
    <img src="../assets/logo.jpg" alt="" class="logo" />
    <h1>{{ title }}</h1>
  </header>
</template>

<script>
export default {
  data() {
    return {
      title: "Yu-Gi-Oh Api",
    };
  },
};
</script>

<style lang="scss" scoped>
@use "../style/partials/variables" as *;
header {
  background-color: white;
  width: 100%;
  height: 100px;
  display: flex;
  align-items: center;
  padding-left: 100px;
  gap: 40px;
  img {
    width: 150px;
  }
  h1 {
    color: black;
    font-size: 50px;
  }
}
</style>
