<template>
  <h1>RICERCA AVANZATA</h1>
  <!-- SWITCH RICERCA AVANZATA -->
  <span class="text-uppercase fw-bold">Solo appartamenti sponsorizzati </span>
  <div class="form-check form-switch d-inline-block">
    <input
      class="form-check-input scb-switch"
      type="checkbox"
      role="switch"
      id="flexSwitchCheckDefault"
      v-model="showAllApartments"
      @change="fetchAppartments"
    />
    <label
      class="form-check-label text-uppercase fw-bold"
      for="flexSwitchCheckDefault"
    >
      Tutti gli appartamenti</label
    >
  </div>
  <!-- RICERCA PER NOME APPARTAMENTO -->
  <div class="form-group mt-3">
    <label for="searchInput">Ricerca per nome appartamento:</label>
    <input
      type="text"
      class="form-control"
      id="searchInput"
      v-model="searchNameAppartment"
      @input="searchApartments"
    />
  </div>
  <!-- RICERCA TOMTOM -->
  <div class="form-group mt-3 position-relative">
    <label for="tomtomSearch">Ricerca TomTom:</label>
    <input
      type="text"
      class="form-control"
      id="tomtomSearch"
      v-model="tomtomSearchTerm"
      @input="searchTomTom"
    />
    <!-- SUGGERIMENTI TOMTOM-->
    <ul v-if="showSuggestions" class="suggestions">
      <li
        v-for="(suggestion, index) in tomtomSuggestions"
        :key="index"
        @click="selectSuggestion(suggestion)"
      >
        {{ suggestion.address.freeformAddress }}
      </li>
    </ul>
  </div>
  <!-- RAGGIO DI RICERCA -->
  <div class="mt-3">
    <label for="radiusSelect">Seleziona il raggio di ricerca:</label>
    <select
      id="radiusSelect"
      class="form-select"
      v-model="selectedRadius"
      @change="searchApartments"
    >
      <option value="0">0 Km</option>
      <option value="5">5 Km</option>
      <option value="10">10 Km</option>
      <option value="15">15 Km</option>
      <option value="20">20 Km</option>
      <option value="25">25 Km</option>
      <option value="30">30 Km</option>
    </select>
  </div>

  <!-- RICERCA PER STANZE -->
  <div class="form-group mt-3">
    <label for="roomsSelect">Seleziona il numero di stanze:</label>
    <select
      id="roomsSelect"
      class="form-select"
      v-model="searchRooms"
      @change="searchApartments"
    >
      <option
        v-for="room in sortedUniqueRooms"
        :key="room"
        :value="room"
        v-if="room !== 0"
      >
        {{ room }}
      </option>
    </select>
  </div>

  <!-- RICERCA PER METRI QUADRI -->
  <div class="form-group mt-3">
    <label for="mqSelect">Seleziona i metri quadri:</label>
    <select
      id="mqSelect"
      class="form-select"
      v-model="searchMq"
      @change="searchApartments"
    >
      <option value="" selected>Tutti</option>
      <option value="1-75">1 - 75 mq</option>
      <option value="76-100">76 - 100 mq</option>
      <option value="101-150">101 - 150 mq</option>
      <option value="151-200">151 - 200 mq</option>
      <option value="201-250">201 - 250 mq</option>
      <option value="251-300">251 - 300 mq</option>
      <option value="301-350">301 - 350 mq</option>
      <option value="351-400">351 - 400 mq</option>
      <option value="401-450">401 - 450 mq</option>
      <option value="451-500">451 - 500 mq</option>
      <option value="501+">Oltre 500 mq</option>
    </select>
  </div>
  <!-- RICERCA PER NUMERO DI LETTI -->
  <div class="form-group mt-3">
    <label for="bedsSelect">Seleziona il numero di letti:</label>
    <select
      id="bedsSelect"
      class="form-select"
      v-model="searchBeds"
      @change="searchApartments"
    >
      <option value="" selected>Tutti</option>
      <option v-for="beds in sortedUniqueBeds" :key="beds" :value="beds">
        {{ beds }} letti
      </option>
    </select>
  </div>
  <!-- RICERCA PER NUMERO DI BAGNI -->
  <div class="form-group mt-3">
    <label for="bathroomsSelect">Seleziona il numero di bagni:</label>
    <select
      id="bathroomsSelect"
      class="form-select"
      v-model="searchBathrooms"
      @change="searchApartments"
    >
      <option value="" selected>Tutti</option>
      <option
        v-for="bathrooms in sortedUniqueBathrooms"
        :key="bathrooms"
        :value="bathrooms"
      >
        {{ bathrooms === 0 ? "0 (O)" : bathrooms }} bagni
      </option>
    </select>
  </div>
  <!-- RICERCA PER SERVIZI -->
  <div class="form-group mt-3">
    <label>Servizi:</label>
    <div
      class="form-check"
      v-for="(serviceName, index) in services"
      :key="index"
    >
      <input
        type="checkbox"
        class="form-check-input"
        :id="`serviceCheckbox_${index}`"
        :value="serviceName"
        v-model="selectedServices"
        @change="searchApartments"
      />
      <label :for="`serviceCheckbox_${index}`" class="form-check-label">{{
        serviceName
      }}</label>
    </div>
  </div>

  <!-- RISULTATI DELLLA RICERCA -->
  <div class="container mt-5">
    <div class="row">
      <div
        :class="['col-12', 'col-md-6', 'd-flex', 'align-items-center', 'mb-3']"
        v-for="appartment in appartments"
        :key="appartment.id"
        @click="goToShowPage(appartment.id)"
        style="cursor: pointer"
      >
        <div class="card h-100 flex-grow-1">
          <div class="card-header">
            <h3>{{ appartment.name }}</h3>
          </div>
          <div class="card-body d-flex align-items-center">
            <div class="me-3">
              <div v-if="appartment.photos && appartment.photos.length > 0">
                <img
                  class="cover w-100"
                  :src="`http://127.0.0.1:8000/storage/${appartment.photos[0].path}`"
                  alt=""
                />
              </div>
              <div v-else>
                <img
                  src="https://picsum.photos/200/300"
                  alt=""
                  class="cover w-100"
                />
              </div>
            </div>
            <div class="ml-3">
              <p><strong>Indirizzo:</strong> {{ appartment.address }}</p>
              <p><strong>Metri Quadri:</strong> {{ appartment.mq }}</p>
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
  name: "AppList",
  data() {
    return {
      allAppartments: [],
      appartments: [],
      links: [],
      lastPage: 0,
      currentPage: 1,
      showAllApartments: true,
      searchNameAppartment: "",
      searchAddress: "",
      searchRooms: 0,
      uniqueRooms: [],
      searchMq: "",
      searchBeds: "",
      uniqueBeds: [],
      searchBathrooms: "",
      uniqueBathrooms: [],
      selectedServices: [],
      services: [],
      tomtomSearchTerm: "",
      tomtomSuggestions: [],
      showSuggestions: false,
    };
  },
  methods: {
    fetchAppartments() {
      let apiUrl = "http://127.0.0.1:8000/api/appartments";

      if (!this.showAllApartments) {
        apiUrl += "?only_sponsored=true";
      }

      axios.get(apiUrl).then((response) => {
        this.allAppartments = response.data;
        this.getUniqueRooms();
        this.getUniqueBeds();
        this.getUniqueBathrooms();
        this.getUniqueServices();
        this.searchApartments();
      });
    },
    getUniqueServices() {
      const allServices = this.allAppartments.reduce((services, appartment) => {
        return services.concat(
          appartment.services.map((service) => service.name)
        );
      }, []);

      this.services = Array.from(new Set(allServices));
      this.services.sort();
    },

    getUniqueBathrooms() {
      const allBathrooms = this.allAppartments.map(
        (appartment) => appartment.bathrooms
      );
      this.uniqueBathrooms = Array.from(
        new Set(allBathrooms.filter((bathrooms) => bathrooms !== 0))
      );
    },
    getUniqueBeds() {
      const allBeds = this.allAppartments.map((appartment) => appartment.beds);
      this.uniqueBeds = Array.from(new Set(allBeds.filter((bed) => bed !== 0)));
    },

    getUniqueRooms() {
      const allRooms = this.allAppartments.map(
        (appartment) => appartment.rooms
      );
      this.uniqueRooms = Array.from(new Set(allRooms));
    },
    // RICERCA PER NOME APPARTAMENTO, INDIRIZZO, STANZE, LETTI, BAGNI, MQ E SERVIZI
    searchApartments() {
      this.appartments = this.allAppartments.filter((appartment) => {
        const nameMatch =
          !this.searchNameAppartment ||
          appartment.name
            .toLowerCase()
            .includes(this.searchNameAppartment.toLowerCase());

        const roomsMatch =
          !this.searchRooms || appartment.rooms >= this.searchRooms;

        const mqMatch = !this.searchMq || this.checkMqRange(appartment.mq);

        const bedsMatch =
          !this.searchBeds || appartment.beds === this.searchBeds;

        const bathroomsMatch =
          !this.searchBathrooms ||
          appartment.bathrooms === this.searchBathrooms;

        const servicesMatch =
          this.selectedServices.length === 0 ||
          this.checkServices(appartment.services);

        const addressMatch =
          !this.tomtomSearchTerm ||
          appartment.address
            .toLowerCase()
            .includes(this.tomtomSearchTerm.toLowerCase());

        return (
          nameMatch &&
          roomsMatch &&
          mqMatch &&
          bedsMatch &&
          bathroomsMatch &&
          servicesMatch &&
          addressMatch
        );
      });
    },

    checkServices(appartmentServices) {
      return this.selectedServices.every((selectedService) =>
        appartmentServices.some(
          (appartmentService) => appartmentService.name === selectedService
        )
      );
    },

    goToShowPage(id, userId) {
      this.$router.push({ name: "home.show", params: { id, user_id: userId } });
    },
    // RICERCA TOMTOM

    searchTomTom() {
      if (this.tomtomSearchTerm.length >= 2) {
        const apiKey = "heZUtTWgjCO3ulbu2i56aVDmhQL9VXBJ";
        const baseUrl = "https://api.tomtom.com/search/2/geocode";

        const searchUrl = `${baseUrl}/${this.tomtomSearchTerm}.json?key=${apiKey}`;

        clearTimeout(this.tomtomTimer);

        this.tomtomTimer = setTimeout(() => {
          axios
            .get(searchUrl, {
              params: {
                storeResult: false,
                limit: 5,
                countrySet: "it",
                key: apiKey,
              },
            })
            .then((response) => {
              this.tomtomSuggestions = response.data.results;
              this.showSuggestions = true;

              setTimeout(() => {
                this.showSuggestions = false;
              }, 10000);

              this.searchApartments();
            })
            .catch((error) => {
              console.error("Errore nella chiamata API TomTom", error);
            });
        }, 500);

        document.addEventListener("click", this.handleDocumentClick);
      } else {
        this.tomtomSuggestions = [];
        this.showSuggestions = false;
        this.searchApartments();
      }
    },
    handleDocumentClick(event) {
      const isOutsideSuggestions = !event.target.closest("#areaSuggerimenti");

      if (isOutsideSuggestions) {
        this.showSuggestions = false;
        document.removeEventListener("click", this.handleDocumentClick);
      }
    },

    selectSuggestion(suggestion) {
      this.tomtomSearchTerm = suggestion.address.freeformAddress;
      this.showSuggestions = false;
    },
  },

  computed: {
    sortedUniqueRooms() {
      const filteredRooms = this.uniqueRooms.filter((room) => room !== 0);

      return filteredRooms.slice().sort((a, b) => a - b);
    },
    sortedUniqueBeds() {
      return this.uniqueBeds.slice().sort((a, b) => a - b);
    },
    sortedUniqueBathrooms() {
      return this.uniqueBathrooms.slice().sort((a, b) => a - b);
    },
  },
  mounted() {
    this.fetchAppartments();
  },
};
</script>

<style lang="scss" scoped>
.card {
  margin-bottom: 20px;
}

.cover {
  width: 100%;
  max-width: 300px;
  max-height: 300px;
  border-radius: 5px;
  margin-top: 10px;
}
.scb-switch {
  width: 3rem;
  height: 1.5rem;
}
.suggestions {
  position: absolute;
  top: 100%;
  left: 0;
  width: 100%;
  background-color: #fff;
  border: 1px solid #ccc;
  list-style-type: none;
  padding: 0;
  margin: 0;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  z-index: 1;
  max-height: 150px;
  overflow-y: auto;

  li {
    padding: 8px;
    cursor: pointer;

    &:hover {
      background-color: #f0f0f0;
    }
  }
}
</style>
