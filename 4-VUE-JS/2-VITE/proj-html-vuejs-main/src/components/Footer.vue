<template>
  <div class="main-footer">
    <div class="container">
      <div class="logo">
        <img src="/img/logo-sidearea-1.png" alt="" />
        <p>Let's get creative</p>
      </div>
      <div>
        <p class="mail">maree.quoke@gmail.com</p>
        <p class="phone">+44645 321 789</p>
      </div>
      <div>
        <p class="street">Avenue d'Auderghem, 10</p>
        <p class="address">1040 Brusselles, Belgium</p>
      </div>
      <div class="social">
        <p>Stay in touch with us</p>
        <div class="icon">
          <div class="twitter">
            <img src="/svg/twitter.svg" alt="" />
          </div>
          <div class="pinterest">
            <img src="/svg/pinterest.svg" alt="" />
          </div>
          <div class="facebook">
            <img src="/svg/facebook.svg" alt="" />
          </div>
          <div class="linkedin">
            <img src="/svg/linkedin.svg" alt="" />
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
.main-footer {
  background-color: $footer;
  padding: 50px;
}
.container {
  margin: 0;
  padding: 0;
  width: 1300px;
  margin: 65px auto 90px;
  display: flex;
  justify-content: space-between;
  gap: 100px;
  font-weight: lighter;
  font-size: 14px;
  div {
    flex-basis: auto;
    flex-shrink: 0;
  }
}
.icon {
  display: flex;
  align-items: center;
  justify-content: space-between;
  img {
    width: 20px;
    cursor: pointer;
  }
}
.logo img {
  margin-bottom: 20px;
  cursor: pointer;
}
.address,
.phone {
  margin-top: 25px;
  cursor: pointer;
}
.mail,
.street {
  cursor: pointer;
}

.mail::after,
.phone::after,
.street::after,
.address::after {
  content: "";
  display: block;
  height: 3px;
  width: 0;
  background: transparent;
  transition: width 1s ease, background-color 1s ease-in-out;
}
.mail:hover::after,
.phone:hover::after,
.street:hover::after,
.address:hover::after {
  width: 100%;
  background: $footer-underline;
}
</style>
