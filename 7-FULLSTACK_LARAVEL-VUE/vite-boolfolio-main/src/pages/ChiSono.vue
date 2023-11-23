<template>
  <DefaultLayout>
    <div class="container">
      <h1 class="text-uppercase text-center fw-bolder my-5">chi sono</h1>
      <img class="avatar" src="/img/avatar.png" alt="" />
      <p class="scb">
        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Perferendis,
        rerum! Rerum nostrum, asperiores quasi iure impedit expedita magni animi
        quisquam quas necessitatibus enim vero accusantium dignissimos voluptas
        beatae! Eveniet, nemo nulla. Maiores natus esse sunt quos recusandae,
        nihil ipsam tenetur eligendi, cupiditate praesentium fuga dolorum
        aspernatur. Magni officiis temporibus atque error voluptatem tempora
        laborum distinctio voluptas provident quae, dicta officia itaque omnis
        deserunt corporis perferendis saepe fuga rem. Sit culpa itaque
        reiciendis nihil magni veniam, incidunt harum obcaecati dolores? Nam
        velit quisquam maxime quaerat, corporis voluptates impedit et
        consequatur consectetur facilis voluptatum magnam, rerum nihil ad eaque
        commodi blanditiis adipisci!
      </p>
    </div>
  </DefaultLayout>
</template>

<script>
import DefaultLayout from "../layouts/Default.vue";
export default {
  components: {
    DefaultLayout,
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
.scb {
  text-align: justify;
}
.avatar {
  //   display: flex;
  //   justify-content: center;
  //   align-items: center;
  width: 25%;
  margin: 0 auto;
}
</style>
