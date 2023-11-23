<!-- **************************
HTML
************************** -->
<template>
  <div class="card-box">
    <div class="container">
      <ul class="flex">
        <li class="card-item flex" v-for="card in menu">
          <img :src="card.img" alt="" class="thumb" />
          <p class="thumb-description">{{ card.label }}</p>
        </li>
        <!-- <li class="card-item flex margin-rl">
          <img
            src="../../public/img/buy-comics-merchandise.png"
            alt=""
            class="thumb"
          />
          <p class="thumb-description">dc merchandise</p>
        </li>
        <li class="card-item flex">
          <img
            src="../../public/img/buy-comics-subscriptions.png"
            alt=""
            class="thumb"
          />
          <p class="thumb-description">subscription</p>
        </li>
        <li class="card-item flex margin-rl">
          <img
            src="../../public/img/buy-comics-shop-locator.png"
            alt=""
            class="thumb"
          />
          <p class="thumb-description">comic shop locator</p>
        </li>
        <li class="card-item flex">
          <img
            src="../../public/img/buy-dc-power-visa.svg"
            alt=""
            class="thumb svg"
          />
          <p class="thumb-description">dc power visa</p>
        </li> -->
      </ul>
    </div>
  </div>
  <!-- UP FOOTER -->
  <div class="up-footer">
    <div class="container">
      <div class="prova flex-up-footer">
        <div class="col">
          <h3 class="list-title">dc comics</h3>
          <ul>
            <li class="list-items">Characters</li>
            <li class="list-items">Comics</li>
            <li class="list-items">Movies</li>
            <li class="list-items">Tv</li>
            <li class="list-items">Games</li>
            <li class="list-items">Videos</li>
            <li class="list-items">News</li>
          </ul>
          <h3 class="list-title shop">shop</h3>
          <ul>
            <li class="list-items">Shop DC</li>
            <li class="list-items">Shop DC Collectibles</li>
          </ul>
        </div>
        <div class="col">
          <h3 class="list-title">dc comics</h3>
          <ul>
            <li class="list-items">Terms Of Use</li>
            <li class="list-items">Privacy policy (New)</li>
            <li class="list-items">Ad Choices</li>
            <li class="list-items">Advertising</li>
            <li class="list-items">Jobs</li>
            <li class="list-items">Subscriptions</li>
            <li class="list-items">Talent Workshops</li>
            <li class="list-items">CPSC Certificates</li>
            <li class="list-items">Ratings</li>
            <li class="list-items">Shop Help</li>
            <li class="list-items">Contact Us</li>
          </ul>
        </div>
        <div class="col">
          <h3 class="list-title">sites</h3>
          <ul>
            <li class="list-items">DC</li>
            <li class="list-items">MAD Magazine</li>
            <li class="list-items">DC Kids</li>
            <li class="list-items">DC Universe</li>
            <li class="list-items">DC Power Visa</li>
          </ul>
        </div>
        <img class="logo-grande" src="../../public/img/dc-logo-bg.png" alt="" />
      </div>
    </div>
    <!-- <div class="big-logo">
      <img src="../../public/img/dc-logo-bg.png" alt="" />
    </div> -->
  </div>
  <!-- LOWER FOOTER -->
  <div class="lower-footer">
    <div class="container flex">
      <button>sign up now</button>
      <div class="follow flex">
        <p class="follow-us">follow us</p>
        <ul class="flex">
          <li><img src="../../public/img/footer-facebook.png" alt="" /></li>
          <li class="margin-rl">
            <img src="../../public/img/footer-twitter.png" alt="" />
          </li>
          <li><img src="../../public/img/footer-youtube.png" alt="" /></li>
          <li class="margin-rl">
            <img src="../../public/img/footer-pinterest.png" alt="" />
          </li>
          <li class="social">
            <img src="../../public/img/footer-periscope.png" alt="" />
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<!-- **************************
JAVA SCRIPT
************************** -->
<script>
export default {
  data() {
    return {
      menu: [
        {
          img: "../../public/img/buy-comics-digital-comics.png",
          label: "digital comics",
        },
        {
          img: "../../public/img/buy-comics-merchandise.png",
          label: "dc merchandise",
        },
        {
          img: "../../public/img/buy-comics-subscriptions.png",
          label: "subscription",
        },
        {
          img: "../../public/img/buy-comics-shop-locator.png",
          label: "comic shop locator",
        },
        {
          img: "../../public/img/buy-dc-power-visa.svg",
          label: "dc power visa",
        },
      ],
    };
  },
};
</script>

<!-- **************************
STYLE
************************** -->
<style lang="scss" scoped>
// FASCIA BLU
.card-box {
  background-color: #0182f9;
  color: white;
  text-transform: uppercase;
  z-index: 999;
}
.container {
  padding: 30px 0;
  font-size: 12px;
}
.thumb {
  width: 25px;
  display: block;
  margin-right: 15px;
  z-index: 999;
}
.svg {
  width: 40px;
}
.flex {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

li {
  cursor: pointer;
}
// UP FOOTER
.up-footer {
  background-image: url(../../public/img/footer-bg.jpg);
  .container {
    color: white;
  }

  .flex-up-footer {
    display: flex;
    gap: 30px;
  }
  .list-title {
    text-transform: uppercase;
    margin-bottom: 15px;
  }
  .shop {
    margin-top: 15px;
  }
  .list-items {
    color: #807d7d;
    padding-bottom: 8px;
    &:hover {
      color: white;
    }
  }
}
// LOWER FOOTER
.lower-footer {
  background-color: #303030;
  position: relative;
  button {
    line-height: 2rem;
    padding: 5px 10px;
    background-color: #303030;
    color: white;
    text-transform: uppercase;
    border-color: #0182f9;
    font-weight: bold;
    cursor: pointer;
  }
  .follow-us {
    color: #0182f9;
    font-size: 1.3rem;
    margin-right: 30px;
    text-transform: uppercase;
    font-weight: 700;
  }
  li {
    padding: 0 10px;
  }
  .social {
    padding-right: 0;
  }
}
.prova {
  // border: 5px solid greenyellow;
  position: relative;
  .logo-grande {
    position: absolute;
    width: 500px;
    left: 400px;
    bottom: -110px;
  }
}
</style>
