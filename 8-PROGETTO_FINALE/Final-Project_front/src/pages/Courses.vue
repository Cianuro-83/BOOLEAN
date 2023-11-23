<script>
import Default from "../layouts/Default.vue";
import axios from "axios";

export default {
  components: {
    Default,
  },
  data() {
    return {
      specializations: [],
    };
  },
  methods: {
    fetchSpecializations() {
      axios
        .get("http://127.0.0.1:8000/api/specializations")
        .then((response) => {
          const results = response.data;
          this.specializations = results;
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
  mounted() {
    this.fetchSpecializations();
  },
};
</script>

<template>
  <Default>
    <div class="container">
      <h1 class="title_specializations">
        Le specializzazioni dei nostri professori
      </h1>
      <div v-if="specializations.length">
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4 mt-4">
          <div class="col" v-for="specialization in specializations">
            <div class="card">
              <img
                :src="specialization.images"
                class="card-img-top img-thumbnail resized"
                alt="..."
              />
              <div class="card-body">
                <h5 class="card-title title_specializations">
                  {{ specialization.name }}
                </h5>
                <p class="card-text mt-3">
                  {{ specialization.description }}
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div v-else class="no-results">Caricamento in corso...</div>
    </div>
  </Default>
</template>

<style lang="scss">
@use "../style/partials/variables.scss" as *;
.title_specializations {
  color: $light_green;
  padding: 5px;
  border-left: 2px solid $light_green;
  border-right: 2px solid $light_green;
  border-bottom: 2px solid $light_green;

}
.card {
  height: 100%;
  border-radius: 20px;

  .card-img-top {
    border-radius: 20px;
    width: 100%;
    aspect-ratio: 1;
    object-fit: cover;
    object-position: center;
  }
}
</style>
