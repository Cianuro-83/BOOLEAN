<template>
  <nav class="navbar bg-primary navbar-expand-lg bg-body-primary">
    <div class="container-fluid">
      <router-link
        :to="{ name: 'home' }"
        class="d-flex align-items-center navbar-brand text-black fw-bolder text-uppercase"
        ><img src="/img/logo.svg" alt="logo" class="logo me-1" /> cianuro's
        projects</router-link
      >
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <router-link
              :to="{ name: 'portfolio' }"
              class="nav-link text-black text-uppercase"
              >Portfolio</router-link
            >
          </li>
          <li class="nav-item">
            <router-link
              :to="{ name: 'about-me' }"
              class="nav-link text-black text-uppercase"
              >chi sono</router-link
            >
          </li>

          <li class="nav-item">
            <router-link
              :to="{ name: 'contattami' }"
              class="nav-link text-black text-uppercase"
              >contattami</router-link
            >
          </li>
        </ul>
      </div>
    </div>
  </nav>
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
    /// **************************
    // FINE METHODS
  },
  // **************************
};
</script>

<style lang="scss" scoped>
@use "../style/partials//variables" as *;
.logo {
  width: 8%;
}
</style>
