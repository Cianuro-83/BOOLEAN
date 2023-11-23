<template>
  <div class="apici">
    <img class="palloncino" src="/svg/svg-7.svg" alt="" />
    <img class="shop" src="/svg/svg-6.svg" alt="" />
    <div class="arrow-up">
      <a href="#">&UpArrow;</a>
    </div>
  </div>
</template>

<script>
export default {
  components: {
    // **************************
    // FINE COMPONETS
  },
  // **************************
  data() {
    return {
      // **************************
      // FINE DATA E RETURN &
    };
  },
  // **************************
  computed: {
    // **************************
    // FINE COMPUTED
  },
  // **************************
  watch: {
    // **************************
    // FINE WATCH
  },
  // **************************
  methods: {
    // **************************
    // FINE METHODS
  },
  // **************************
};
</script>

<style lang="scss" scoped>
@use "../style/partials//variables" as *;
.palloncino,
.shop {
  width: 48px;
  padding: 9px;
  cursor: pointer;
}
.apici {
  position: fixed;
  z-index: 999;
  right: 5px;
  top: 250px;
}
.palloncino {
  background-color: red;
  margin-bottom: 9px;
}
.shop {
  background-color: white;
}
.arrow-up {
  background-color: #c0e1cf;
  cursor: pointer;
  width: 45px;
  font-size: 30px;
  font-weight: 900;
  aspect-ratio: 1/0.1;
  display: flex;
  align-items: center;
  justify-content: center;
  position: fixed;
  right: 10px;
  bottom: 10%;
  color: black;
}
a {
  font-style: none;
  text-decoration: none;
  color: white;
}
</style>
