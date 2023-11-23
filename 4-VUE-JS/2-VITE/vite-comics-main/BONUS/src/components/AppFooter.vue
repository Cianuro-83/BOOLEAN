<!-- **************************
HTML
************************** -->
<template>
  <div class="up-footer">
    <div class="container flex-up-footer">
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
    </div>
    <div class="big-logo">
      <img src="../../public/img/dc-logo-bg.png" alt="" />
    </div>
  </div>
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
          <li><img src="../../public/img/footer-periscope.png" alt="" /></li>
        </ul>
      </div>
    </div>
  </div>
</template>

<!-- **************************
JAVA SCRIPT
************************** -->
<script>
export default {};
</script>

<!-- **************************
STYLE
************************** -->
<style lang="scss" scoped>
// FASCIA BLU

.container {
  padding: 30px 0;
  font-size: 12px;
}

.flex {
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.margin-rl {
  margin: 0 30px;
}
li {
  cursor: pointer;
}
// UP FOOTER
.up-footer {
  background-image: url(../../public/img/footer-bg.jpg);
  .container {
    color: white;
    position: relative;
  }
  .big-logo {
    position: absolute;
    top: 200px;
    right: 100px;
    width: 500px;
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
  z-index: 99;
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
}
</style>
