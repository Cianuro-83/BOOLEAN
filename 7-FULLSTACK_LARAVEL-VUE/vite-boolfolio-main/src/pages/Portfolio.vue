<template>
  <DefaultLayout>
    <div>
      <Projects />
    </div>
  </DefaultLayout>
</template>

<script>
import DefaultLayout from "../layouts/Default.vue";
import Projects from "../components/Projects.vue";
export default {
  components: {
    DefaultLayout,
    Projects,

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
</style>
