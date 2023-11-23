<template>
  <section>
    <div class="container">
      <div class="carosello">
        <div
          v-for="(carousel, index) in slides"
          :key="index"
          class="slide"
          :class="index === currentIndex ? 'active' : ''"
        >
          <div class="carousel-box">
            <div class="carousel-text">
              <div>
                <div class="animate__animated animate__fadeInRight">
                  <h3 v-html="carousel.title"></h3>
                  <span class="evidence">{{ carousel.evidence }}</span>
                </div>
                <p class="animate__animated animate__fadeInRight">
                  {{ carousel.text }}
                </p>
              </div>
              <button
                class="animate__animated animate__fadeInRight animate__delay-1s"
              >
                {{ carousel.button }}
              </button>
            </div>
            <div class="carousel-img">
              <img
                class="animate__animated animate__fadeInUp"
                :src="carousel.image"
                alt=""
              />
            </div>
          </div>
        </div>
        <div
          @click="prevSlide"
          id="arrow-left"
          class="carosello__arrow arrow-left"
        >
          <img src="/svg/chevron-left.svg" alt="" />
        </div>
        <div
          @click="nextSlide"
          id="arrow-right"
          class="carosello__arrow arrow-right"
        >
          <img src="/svg/chevron-right.svg" alt="" />
        </div>
        <p class="dot">. . .</p>
      </div>
    </div>
  </section>
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
      slides: [
        {
          image: "./img/carosello-skate.png",
          image2: "./img/h-2-slider-img-16.png",
          title: "Devotion that <br> never",
          evidence: " ends",
          text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue eros dignissim malesuada porttitor. Donec a turpis in orci aliquam.",
          button: "read more",
        },
        {
          image: "/img/carosello-joy.png",
          title: "Our new folio <br> full of",
          evidence: " joy",
          text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue eros dignissim malesuada porttitor. Donec a turpis in orci aliquam.",
          button: "read more",
        },
        {
          image: "./img/carosello-panchina.png",
          title: "Project made <br> with",
          evidence: " love",
          text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue eros dignissim malesuada porttitor. Donec a turpis in orci aliquam.",
          button: "read more",
        },
      ],
      currentIndex: 0,
      autoplay: null,
    };
  },
  methods: {
    nextSlide() {
      const lastIndex = this.slides.length - 1;
      if (this.currentIndex < lastIndex) {
        this.currentIndex++;
      } else {
        this.currentIndex = 0;
      }
    },
    prevSlide() {
      const lastIndex = this.slides.length - 1;
      if (this.currentIndex > 0) {
        this.currentIndex--;
      } else {
        this.currentIndex = lastIndex;
      }
    },
  },
  mounted() {
    this.autoplay = setInterval(this.nextSlide, 4000);
  },
};
</script>

<style lang="scss" scoped>
@use "../style/partials//variables" as *;
.container {
  margin: 0;
  padding: 0;
  width: 1800px;
  margin: 0 auto;
}
.slide img {
  width: 897px;
  height: 511px;

  object-fit: cover;
  object-position: center;
}

.slide.active {
  display: block;
}

.slide {
  display: none;
  position: relative;
}

.carosello {
  position: relative;
}

.carosello .carosello__arrow {
  position: absolute;
  font-size: 40px;
  color: white;
  top: 50%;
  transform: translateY(-50%);
  z-index: 20;
}

.carosello .carosello__arrow.arrow-left {
  left: 20px;
}
.carosello .carosello__arrow.arrow-left,
.carosello .carosello__arrow.arrow-right {
  cursor: pointer;
  aspect-ratio: 1/1;
  width: 25px;
}

.carosello .carosello__arrow.arrow-right {
  right: 20px;
}
.carousel-box {
  margin: 20px 0;
  display: flex;
  align-items: center;
}
.carousel-text {
  padding-left: 110px;
  width: 764px;
  h3 {
    display: inline;
    font-size: 40px;
    font-weight: normal;
    line-height: 4.5rem;
  }
  .evidence {
    font-weight: 900;
    font-style: italic;
    font-size: 70px;
    line-height: 1rem;
    font-family: serif;
  }
  button {
    background-color: white;
    border: 2px solid $carousel-color;
    text-transform: uppercase;
    font-weight: 700;
    width: 120px;
    height: 36px;
    font-size: 12px;
    &:hover {
      background-color: $carousel-color;
      color: white;
      transition: all 1s ease-in-out;
    }
  }
}

.carousel-img {
  padding-right: 50px;
  img {
    object-fit: contain;
    max-width: 90%;
    width: 799px;
    height: 402px;
  }
}
.dot {
  text-align: center;
  font-size: 60px;
  font-weight: 800;
  line-height: 0.1rem;
  padding-bottom: 2rem;
  color: $carousel-color;
  cursor: pointer;
}
</style>
