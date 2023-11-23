<template>
  <div class="app">
    <nav class="app-nav">
      <div class="d-flex justify-content-end">
        <NavBar />
      </div>
    </nav>
    <main>
      <router-view></router-view>
    </main>
    <footer>
      <div>
        <FooterNavBar />
      </div>
    </footer>
  </div>
</template>

<script>
import NavBar from "./components/navBar/NavBar.vue";
import FooterNavBar from "./components/navBar/FooterNavBar.vue";
export default {
  components: {
    NavBar,
    FooterNavBar,
  },
};
</script>

<style lang="scss" scoped>
.app {
  display: flex;
  flex-direction: column;
  height: 100vh;
  overflow: hidden;
  background: rgb(255, 255, 255);
  background: linear-gradient(
    180deg,
    rgba(255, 255, 255, 1) 0%,
    rgba(238, 221, 197, 1) 12%,
    rgba(253, 228, 196, 1) 50%,
    rgba(157, 93, 29, 1) 79%,
    rgba(0, 0, 0, 1) 100%
  );
}

.app-nav,
footer {
  flex-shrink: 0;

  width: 100%;
  height: 80px;
  padding: 20px;
}
.app-nav {
  display: flex;
  justify-content: end;
  color: rgba(157, 93, 29, 1);
}
footer {
  color: greenyellow;
  display: flex;
  justify-content: center;
}

main {
  flex-grow: 1;
  overflow-y: auto;
  padding: 20px;
}
</style>
