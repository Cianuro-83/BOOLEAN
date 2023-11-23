<template>
  <div class="block-container">
    <div class="cianuro" v-for="(block, i) in blocks" :key="i">
      <div class="position">
        <img class="illustration" :src="block.src" alt="" />
        <div class="badge">
          <div class="post-it">
            <p class="badge-text">{{ block.text }}</p>
            <p class="badge-plot">{{ block.plot }}</p>
          </div>
        </div>
      </div>
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
      blocks: [
        {
          src: `/img/h-2-port-img-1.jpg`,
          text: `All these illustrations`,
          plot: `illustration`,
        },
        {
          src: `/img/h-2-port-img-2.jpg`,
          text: `Type and illustrations`,
          plot: `illustration`,
        },
        {
          src: `/img/h-2-port-img-3.jpg`,
          text: `Draw and illustrations`,
          plot: `illstration`,
        },
        {
          src: `/img/h-2-port-img-4.jpg`,
          text: `Illustration of novels`,
          plot: `illstration`,
        },
        {
          src: `/img/h-2-port-img-5.jpg`,
          text: `Too many illustration`,
          plot: `illstration`,
        },
        {
          src: `/img/h-2-port-img-6.jpg`,
          text: `Dreams are illustrations`,
          plot: `illstration`,
        },
      ],
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
.block-container {
  display: flex;
  flex-wrap: wrap;
  flex-grow: 1;
  position: relative;
  z-index: 1;
}
.cianuro {
  flex-basis: calc(100% / 3);
}
.position {
  position: relative;
  .badge {
    position: absolute;
    z-index: 10;
    background-color: white;
    color: black;
    top: 0;
    bottom: 0;
    right: 0;
    left: 0;
    padding: 0px;
    width: 100%;
    background-color: transparent;
    display: flex;
    flex-direction: column;
    justify-content: center;
    filter: opacity(0);
    .post-it {
      background-color: white;
      width: 300px;
      padding-top: 10px;
    }
    &:hover {
      // -webkit-animation: cianuro 1s infinite;
      // -moz-animation: cianuro 1s infinite;
      // -o-animation: cianuro 1s infinite;
      // animation: cianuro 1s ease-in-out;
      filter: opacity(1);
      transition: all 1s ease-in-out;
    }
  }
}
// @keyframes cianuro:hover {
//   0% {
//     width: 0px;
//   }
//   100% {
//     width: 300px;
//   }
// }
.badge-text {
  font-size: 20px;
}
.badge-plot {
  font-size: 15px;
  font-style: italic;
}
</style>
