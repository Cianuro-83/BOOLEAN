<script>
import Default from "../layouts/Default.vue";
import axios from "axios";

export default {
  components: {
    Default,
  },
  data() {
    return {
      images_spec: [
        "/public/Archivio/06.jpeg",
        "/public/Archivio/11.webp",
        "/public/Archivio/12.jpeg",
        "/public/Archivio/13.jpeg",
        "/public/Archivio/15.jpeg",
      ],
      currentIndex: 0,
      autoplay: null,
      teachers: [],
      sponsorships: [],
    };
  },
  methods: {
    fetchTeachers() {
      axios
        .get("http://127.0.0.1:8000/api/sponsorships")
        .then((response) => {
          // console.log(response);
          const results = response.data;
          this.sponsorships = results;
          //   console.log(this.sponsorships);
        })
        .catch((error) => {
          console.log(error);
        });
    },
    nextSlide() {
      // console.log('next')
      const lastIndex = this.images_spec.length - 1;
      // incrementiamo il currentIndex
      if (this.currentIndex < lastIndex) {
        this.currentIndex++;
      } else {
        this.currentIndex = 0;
      }
    },
    prevSlide() {
      console.log("prev");
      const lastIndex = this.images_spec.length - 1;
      // descrementiamo il currentIndex
      if (this.currentIndex > 0) {
        this.currentIndex--;
      } else {
        this.currentIndex = lastIndex;
      }
    },
  },
  mounted() {
    // console.log(this.images_spec)
    this.fetchTeachers();
    this.autoplay = setInterval(this.nextSlide, 3000);
  },
};
</script>

<template>
  <Default>
    <div class="container">
      <div class="hero">
        <div class="row gap-5">
          <div class="title mt-4">
            <h1>
              Vuoi avere successo nella tua vita? allora sei nel posto giusto!
            </h1>
            <h4>
              Oppure sei un professionista e vuoi rendere il tuo profilo più
              visibile? Registrati!
            </h4>
          </div>
          <div class="carosell col-6">
            <div
              v-for="(image, index) in images_spec"
              class="slide"
              :class="index === currentIndex ? 'active' : ''"
            >
              <img :src="image" alt="" />
            </div>
          </div>
          <div class="col-12 d-flex justify-content-around align-center">
            <button class="button_style">
              <router-link :to="{ name: 'courses' }" class="router">
                Vedi la lista completa dei nostri corsi
              </router-link>
            </button>

            <button class="button_style">
              <router-link :to="{ name: 'teachers.index' }" class="router">
                Vedi la lista completa dei nostri professionisti
              </router-link>
            </button>
          </div>
        </div>
      </div>
    </div>
    <section class="section_sponsor mt-3">
      <div class="container">
        <h3 class="mb-5 text_white_gold">
          Ecco le sponsorizzazioni che offriamo se entri a far parte della
          nostra piattaforma!
        </h3>
        <div
          class="row row-cols-1 row-cols-md-2 row-cols-lg-3 justify-content-center text-center text_white_gold"
        >
          <div class="col" v-for="sponsor in sponsorships">
            <div class="card mb-3 border_white_gold" style="max-width: 18rem">
              <div class="card-header border_white_gold">
                <h5>{{ sponsor.price }} per {{ sponsor.duration }} ore</h5>
              </div>
              <div class="card-body border_white_gold">
                <p class="card-text">
                  {{ sponsor.description }}
                </p>
              </div>
              <div class="card-footer border_white_gold">
                <button type="submit" class="button_style">
                  <a href="http://127.0.0.1:8000/login">
                    Clicca qui
                  </a>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </Default>
</template>

<style lang="scss">
@use "../style/partials/variables.scss" as *;

.hero {
  color: $light_green;
  .row {
    .carosell {
      margin: 0 auto;
      border: 2px solid $light_green;
      border-radius: 20px;
      padding: 20px;
      img {
        width: 100%;
        aspect-ratio: 16/9;
        object-fit: cover;
        object-position: center;
        border-radius: 20px;
      }

      .slide.active {
        display: block;
      }

      .slide {
        display: none;
        position: relative;
      }

      .button_style {
        border: 1px solid $light_green;
      }
    }
  }
}
.button_style {
  margin: 15px;
  padding: 10px;
  border: 1px solid $white_gold;
  border-radius: 20px;
  color: $light_green !important;
  background-color: $white_gold;
}

.section_sponsor {
  background-color: $light_green;
  padding: 100px;
  .card {
    background-color: $light_green;
    margin: 0 auto;
    height: 100%;

    .card-header{
      background-color: $white_gold;
      color: $light_green;
      border-radius: 18px;
      padding: 20px;
    }
  }

  .border_white_gold {
    border-color: $white_gold;
  }

  .text_white_gold {
    color: $white_gold !important;
  }
}

@media only screen and (max-width: 990px) {
  .section_sponsor{
    .col{
      margin-top: 10px;
    }
  }

  .carosell{
    width: 60%;
  }
}

@media only screen and (max-width: 774px) {
  .title{
    h4 {
      font-size: medium;
    }
  }

}
</style>
