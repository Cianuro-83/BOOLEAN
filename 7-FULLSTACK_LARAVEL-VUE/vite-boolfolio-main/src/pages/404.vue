<template>
  <div class="scb">
    <h2 class="text-scb">
      <span class="text-danger">Errore 404: </span
      ><span>pagina non trovata</span>
    </h2>
    <p>La pagina che stavi cercando di raggiungere purtroppo non esiste</p>
    <router-link :to="{ name: 'home' }">
      <button type="button" class="btn btn-primary btn-lg">
        TORNA ALLA HOME
      </button>
    </router-link>
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
.scb {
  height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
</style>
