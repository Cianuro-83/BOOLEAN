<template>
  <div class="container-wwu">
    <div class="contenuto-wwu">
      <h2>Whant to work with us? Send us <span>a message!</span></h2>
      <p class="description-wwu">
        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas enim
        vitae provident sit aliquid ipsum perferendis aut sed maxime deleniti
        distinctio aspernatur reprehenderit totam, repudiandae sint non, minima
        id placeat cumque ducimus molestias!
      </p>
    </div>
    <button>contact</button>
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
.container-wwu {
  background-image: url("/img/sfondo-wwu.jpg");
  height: 480px;
  width: 100%;
  background-size: cover;
  background-position: center;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

h2 {
  font-weight: normal;
  font-size: 48px;
  text-align: center;
  span {
    font-weight: bolder;
    font-size: 65px;
    font-style: italic;
    font-family: serif;
  }
}
.description-wwu {
  text-align: center;
  font-weight: lighter;
}
button {
  text-align: center;
  font-weight: bold;
  width: 224px;
  height: 50px;
  background-color: #d8f0e3;
  cursor: pointer;
  text-transform: uppercase;
  &:hover {
    background-color: $carousel-color;
    color: white;
    transition: all 1s ease-in-out;
  }
}
</style>
