<template>
  <header>
    <div class="logo">
      <img src="/img/logo-sidearea-1.png" alt="" />
    </div>
    <div class="menu">
      <ul class="menu-items">
        <li v-for="(nav, i) in navItems" :key="i">
          <a href="#">{{ nav }}</a>
          <div class="dropdown">
            <ul id="submenu">
              <li v-for="(home, i) in homes" :key="i">
                <a href="#">{{ home }}</a>
              </li>
            </ul>
          </div>
        </li>
      </ul>

      <img class="dots" src="/svg/svg-1.svg" alt="" />
    </div>
  </header>
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
      navItems: [`home`, `pages`, `portfolio`, `blog`, `shop`, `elements`],
      homes: [`Link`, `Link`, `Link`, `Link`, `Link`, `Link`],

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
header {
  padding: 15px 40px 20px 40px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.logo {
  cursor: pointer;
}
.menu {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 53px;
  .menu-items {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 53px;
    text-transform: uppercase;
    font-weight: bold;
    margin-top: 15px;
    position: relative;
  }
}
.menu-items li::after {
  content: "";
  z-index: 0;
  position: absolute;
  display: block;
  height: 5px;
  width: 0;
  background: transparent;
  transition: width 0.5s ease, background-color 0.5s ease-in-out;
}
.menu-items li:hover::after {
  width: 10%;
  background: #f2b2afb8;
}
a {
  color: black !important;
  text-decoration: none;
}
.dropdown ul {
  background-color: $box-work-process;
  list-style: none;
  padding: 5px;
}

#submenu {
  opacity: 0;
  position: absolute;
  top: 0px;
  z-index: 1;
  visibility: hidden;
}
li:hover ul#submenu {
  transition: all 0.5s ease-in-out;
  opacity: 1;
  top: 5px;
  right: 0;
  visibility: visible;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  flex-grow: 1;
}

#submenu li::after {
  content: "";
  display: block;
  height: 3px;
  width: 0;
  background: transparent;
  transition: width 0.5s ease, background-color 0.5s ease-in-out;
}

#submenu li:hover::after {
  width: 100%;
  background: $footer-underline;
}
</style>
