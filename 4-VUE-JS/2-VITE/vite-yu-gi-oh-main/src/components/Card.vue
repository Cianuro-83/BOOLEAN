<template>
  <li>
    <img :src="card.card_images[0].image_url" alt="" class="thumb" />
    <h3 class="name">{{ card.name }}</h3>
    <p>{{ card.archetype }}</p>
  </li>
</template>

<script>
// import axios from "axios";
export default {
  components: {
    // axios,
  },
  props: {
    card: {
      type: Object,
      required: true,
    },
  },
};
</script>

<style lang="scss" scoped>
@use "../style/partials/variables" as *;
li {
  &:hover {
    filter: drop-shadow(0 0 2em #f00303aa);
    cursor: pointer;
  }
  background-color: rgba(0, 0, 0, 0.519);
  h3 {
    color: red;
    text-align: center;
    text-transform: uppercase;
    margin-top: 20px;
    font-size: 15px;
    height: 10%;
  }
  p {
    text-align: center;
    margin-top: 20px;
    color: white;
    margin-bottom: 15px;
  }
}
</style>
