<template>
  <DefaultLayout>
    <div>
      <div class="container scb">
        <img src="/img/logo.svg" alt="" />
      </div>
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
  display: flex;
  align-items: center;
  justify-content: center;
  height: 90vh;
}
</style>
