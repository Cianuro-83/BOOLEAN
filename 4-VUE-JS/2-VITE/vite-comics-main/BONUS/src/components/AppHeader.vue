<!-- **************************
HTML
************************** -->
<template>
  <header>
    <div class="container flex">
      <div class="logo">
        <img class="logo-img" src="../../public/img/dc-logo.png" alt="" />
      </div>
      <div class="nav">
        <ul class="flex">
          <li
            v-for="(menu, i) in menuBar"
            @click="selezionaMenuAttivo(i)"
            :class="this.currentMenu === i ? `active` : ``"
          >
            {{ menu.label }}
          </li>
          <!-- <li class="margin-around">comics</li>
          <li>movies</li>
          <li class="margin-around">tv</li>
          <li>games</li>
          <li class="margin-around">collectibles</li>
          <li>video</li>
          <li class="margin-around">fans</li>
          <li>news</li>
          <li class="margin-left">shop</li> -->
        </ul>
      </div>
    </div>
  </header>
</template>

<!-- **************************
JAVA SCRIPT
************************** -->
<script>
export default {
  data() {
    return {
      menuBar: [
        {
          label: "characters",
        },
        {
          label: "comics",
        },
        {
          label: "movies",
        },
        {
          label: "tv",
        },
        {
          label: "games",
        },
        {
          label: "collectibles",
        },
        {
          label: "video",
        },
        {
          label: "fans",
        },
        {
          label: "news",
        },
        {
          label: "shop",
        },
      ],
      currentMenu: 0,
    };
  },
  methods: {
    selezionaMenuAttivo(currentIndex) {
      this.currentMenu = currentIndex;
    },
  },
};
</script>

<!-- **************************
STYLE
************************** -->
<style lang="scss" scoped>
// @use "../style/partials/variable" as *;
.container {
  padding-top: 15px;
}
.flex {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.logo-img {
  width: 75px;
}
.margin-around {
  margin: 0 10px;
}
.margin-left {
  margin-left: 10px;
}
ul {
  text-transform: uppercase;
  font-weight: bold;
}

li {
  position: relative;
  margin-left: 10px;
  &.active,
  &:hover {
    color: #0182f9;
    cursor: pointer;
    &::after {
      display: inline-block;
      content: "";
      display: inline-block;
      height: 4px;
      width: 100%;
      background-color: #0182f9;
      position: absolute;
      bottom: -30px;
      left: 0;
    }
  }
}
</style>
