<template>
  <div class="main-content">
    <div class="container">
      <div class="onda">
        <img
          class="animate__animated animate__fadeIn animate__delay-1s"
          src="/svg/svg-3.svg"
          alt=""
        />
      </div>
      <h2>Working <span>process</span></h2>
      <div class="working-steps">
        <div class="w-step" v-for="(card, i) in process" key="i">
          <img
            class="animate__animated animate__fadeIn"
            :src="card.src"
            alt=""
          />
          <h3 class="animate__animated animate__fadeIn animate__delay-1s">
            {{ card.title }}
          </h3>
          <p class="animate__animated animate__fadeIn animate__delay-1s">
            {{ card.description }}
          </p>
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
      process: [
        {
          src: `/svg/wp-1.svg`,
          title: `First theres an idea`,
          description: `Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...`,
        },
        {
          src: `/svg/wp-2.svg`,
          title: `Then we talk about`,
          description: `Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...`,
        },
        {
          src: `/svg/wp-3.svg`,
          title: `And we think about`,
          description: `Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...`,
        },
        {
          src: `/svg/wp-4-ok.svg`,
          title: `So we draw again`,
          description: `Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...`,
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
.main-content {
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.container {
  margin: 0;
  padding: 0;
  width: 1300px;
  margin: 0 auto;
  position: relative;
}
.onda {
  position: absolute;
  top: 40%;
  left: 10%;
  width: 80%;
}

h2 {
  text-align: center;
  font-size: 45px;
  font-weight: normal;
  margin-top: 120px;
  span {
    font-weight: 700;
    font-style: italic;
    font-family: serif;
    font-size: 60px;
  }
}
.working-steps {
  display: flex;
  gap: 31px;
  align-items: center;
  justify-content: flex-start;
  margin: 50px 0 0 0;
  padding: 0;
  position: relative;
  .w-step {
    width: 100%;
    padding: 5px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin-top: 34px;
    margin-bottom: 130px;
    img {
      background-color: $box-work-process;
      aspect-ratio: 1/1;
      height: 102px;
      padding: 30px;
      border-radius: 50%;
      cursor: pointer;
    }
    h3,
    p {
      text-align: center;
      cursor: pointer;
    }
    h3 {
      font-weight: normal;
      font-size: 20px;
      margin: 25px 0;
    }
    p {
      font-weight: lighter;
      font-size: 14px;
    }
  }
}
</style>
