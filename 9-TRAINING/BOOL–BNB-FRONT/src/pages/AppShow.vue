<template>
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3>Dettagli dell'Appartamento : {{ appartment.name }}</h3>
          </div>
          <!-- immagini appartamento -->
          <div class="row mt-3">
            <div class="col-12">
              <div class="image-container text-center">
                <template
                  v-if="appartment.photos && appartment.photos.length > 0"
                >
                  <a
                    v-for="(photo, index) in appartment.photos"
                    :key="index"
                    :href="`http://127.0.0.1:8000/storage/${photo.path}`"
                    class="image-link"
                  >
                    <img
                      class="cover"
                      :src="`http://127.0.0.1:8000/storage/${photo.path}`"
                      alt="Photo"
                    />
                  </a>
                </template>
                <template v-else>
                  <div class="image-link">
                    <img
                      src="https://picsum.photos/200/200"
                      alt="Default Image"
                      class="cover"
                    />
                  </div>
                </template>
              </div>
            </div>
          </div>
          <!-- card -->
          <div class="card-body">
            <div class="row mt-3 d-flex align-items-stretch">
              <!-- dettagli appartamento -->
              <div class="col-12 col-md-6 col-lg-4 flex-fill">
                <div class="card h-100">
                  <div class="card-header">
                    <h4
                      class="text-center text-uppercase fw-bolder text-danger"
                    >
                      Info generali
                    </h4>
                  </div>
                  <div class="card-body">
                    <div v-if="appartment.created_at !== appartment.updated_at">
                      <p class="card-text">
                        <strong>Caricato il:</strong>
                        {{
                          new Date(appartment.created_at).toLocaleDateString(
                            "it-IT",
                            {
                              year: "numeric",
                              month: "2-digit",
                              day: "2-digit",
                            }
                          )
                        }}
                      </p>
                      <p>
                        <strong>Aggiornato il:</strong>
                        {{
                          new Date(appartment.updated_at).toLocaleDateString(
                            "it-IT",
                            {
                              year: "numeric",
                              month: "2-digit",
                              day: "2-digit",
                            }
                          )
                        }}
                      </p>
                    </div>
                    <p v-else class="card-text">
                      <strong>Caricato il:</strong>
                      {{
                        new Date(appartment.created_at).toLocaleDateString(
                          "it-IT",
                          {
                            year: "numeric",
                            month: "2-digit",
                            day: "2-digit",
                          }
                        )
                      }}
                    </p>
                    <p class="card-text">
                      <strong>Dimensioni:</strong> {{ appartment.mq }} mq
                    </p>
                    <p class="card-text">
                      <strong>Stanze:</strong> {{ appartment.rooms }}
                    </p>
                    <p class="card-text">
                      <strong>Posti Letto:</strong> {{ appartment.beds }}
                    </p>
                    <p class="card-text">
                      <strong>Servizi Igienici:</strong>
                      {{ appartment.bathrooms }}
                    </p>
                  </div>
                </div>
              </div>

              <!-- servizi-->
              <div class="col-12 col-md-6 col-lg-4 flex-fill">
                <div class="card h-100">
                  <div class="card-header">
                    <h4
                      class="text-center text-uppercase fw-bolder text-danger"
                    >
                      servizi
                    </h4>
                  </div>
                  <div class="card-body">
                    <template
                      v-if="
                        appartment.services && appartment.services.length > 0
                      "
                    >
                      <p
                        class="card-text"
                        v-for="service in appartment.services"
                        :key="service.id"
                      >
                        {{ service.name }}
                      </p>
                    </template>
                    <template v-else>
                      <p>Nessun servizio associato all'appartamento scelto.</p>
                    </template>
                  </div>
                </div>
              </div>
              <!-- Info di contatto -->
              <div
                class="col-12 col-md-6 col-lg-4 flex-fill"
                v-if="appartment.user"
              >
                <div class="card h-100">
                  <div class="card-header">
                    <h4
                      class="text-center text-uppercase fw-bolder text-danger"
                    >
                      Info di contatto
                    </h4>
                  </div>
                  <div class="card-body">
                    <p class="card-text">
                      <strong>Proprietario:</strong>
                      {{ appartment.user.name }} {{ appartment.user.lastname }}
                    </p>
                    <p class="card-text">
                      <strong>Email:</strong>
                      {{ appartment.user.email }}
                    </p>
                    <router-link :to="{ name: 'home.message' }">
                      <p class="card-text info">RICHIEDI INFORMAZIONI</p>
                    </router-link>
                  </div>
                </div>
              </div>
              <div class="col-12 col-md-6 col-lg-4 flex-fill" v-else>
                <p>Informazioni sull'utente non disponibili.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "AppShow",
  data() {
    return {
      appartment: {},
    };
  },

  methods: {
    fetchAppartment() {
      const id = this.$route.params.id;

      axios
        .get(`http://127.0.0.1:8000/api/appartments/${id}`)
        .then((response) => {
          this.appartment = response.data;
          console.log(this.appartment);
        });
    },
  },
  mounted() {
    this.fetchAppartment();
  },
};
</script>

<style lang="scss" scoped>
.image-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 25px;
  img {
    width: 300px;
    aspect-ratio: 1/1;
    object-fit: cover;
    object-position: center;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
    &:hover {
      transform: scale(1.1);
    }
  }
  .image-link {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 300px;
    height: 300px;
  }
}
button {
  display: flex;
  margin: 50px auto 5px auto;
  border-radius: 25px;
  line-height: 3rem;
  padding: 0 10px;
  border: none;
  color: red;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  &:hover {
    transform: scale(1.1);
    color: blue;
  }
  .info {
    font-weight: bolder;
    font-size: 1.5rem;
    text-align: center;
  }
}
</style>
