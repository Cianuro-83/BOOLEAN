<template>
  <div>
    <div class="result-info">
      <img src="../assets/gif_animate_yu-gi-oh10.gif" alt="" />
      <h3>Trovate {{ this.store.cards.length }} card</h3>
      <img src="../assets/gif_animate_yu-gi-oh10.gif" alt="" />
    </div>
  </div>
</template>

<script>
import store from "../store";
export default {
  components: {},
  data() {
    return {
      store,
      //********************
      // FINE RETURN
    };
    // FINE DATA
  },
  //******************** */
};
</script>

<style lang="scss" scoped>
.result-info {
  color: white;
  //   background-color: rgba(234, 169, 18, 0.9);
  display: flex;
  align-items: center;
  justify-content: space-between;
  line-height: 2rem;
  padding: 20px 10px;
}
img {
  width: 400px;
}
h3 {
  background-color: black;
  width: 100%;
  text-align: center;
}
</style>
