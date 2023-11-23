<template>
  <div class="container-fluid">
    <nav>
      <!-- home page (sponsorizzati) -->
      <router-link v-if="currentRoute !== 'home'" :to="{ name: 'home' }">
        <h4>HOME</h4>
      </router-link>
      <p v-if="currentRoute !== 'home'"><span>|</span></p>
      <!-- show page (sponsorizzati) -->
      <router-link
        v-if="currentRoute === 'home.message'"
        :to="{ name: 'home.show' }"
      >
        <h4>INDIETRO</h4>
      </router-link>
      <p v-if="currentRoute !== 'home.show'"><span>|</span></p>
      <!-- message page singolo appartamento sponsorizzato -->
      <router-link
        v-if="currentRoute === 'home.show'"
        :to="{ name: 'home.message' }"
      >
        <h4>CONTATTACI</h4>
      </router-link>
      <!-- BACK-OFFICE LARAVEL -->
      <p v-if="currentRoute === 'home.show'"><span>|</span></p>
      <a href="http://127.0.0.1:8000/"><h4>BACK-OFFICE</h4></a>
    </nav>
  </div>
</template>

<script>
export default {
  data() {
    return {
      currentRoute: this.$route.name,
    };
  },
  watch: {
    $route(to, from) {
      this.currentRoute = to.name;
    },
  },
};
</script>

<style lang="scss">
nav {
  height: 10vh;
  width: 100%;
  display: flex;

  a {
    text-decoration: none;
    color: black;
    position: relative;
    transition: all 0.3s ease-in-out;

    &:hover {
      color: rgb(193, 51, 51);
      transform: scale(1.1);
      transform-origin: center;

      ::before {
        content: "";
        position: absolute;
        display: inline-block;
        height: 2px;
        width: 100%;
        background-color: blue;
        top: 25px;
      }
    }
  }

  p {
    margin-left: 1vw;
    margin-right: 1vw;

    span {
      font-size: 1.5vw;
    }
  }
}
</style>
