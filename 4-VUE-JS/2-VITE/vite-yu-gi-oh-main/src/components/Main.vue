<template>
  <main>
    <div class="container">
      <Filtro @inRicerca="prendiCard" @onArchetypeChange="prendiCard" />
    </div>
    <div class="container box">
      <div class="card">
        <TotCards />
        <ul v-if="this.store.cards.length > 0" class="grid">
          <Card v-for="(el, i) in this.store.cards" :key="el.id" :card="el" />
        </ul>
        <div v-else>
          <h2 class="error">
            siamo spiacenti, la tua ricerca non ha prodotto risultati
          </h2>
        </div>
      </div>
    </div>
  </main>
</template>

<script>
import axios from "axios";
import Card from "./Card.vue";
import store from "../store";
import TotCards from "./TotCards.vue";
import Filtro from "./Filtro.vue";
export default {
  components: {
    Card,
    TotCards,
    Filtro,
  },
  data() {
    return {
      store,

      //********************
      // FINE RETURN
    };
    // FINE DATA
  },
  //******************** */
  methods: {
    prendiCard() {
      let cerca = this.store.cerca;
      let archetype = this.store.selectArchetype;
      axios
        .get("https://db.ygoprodeck.com/api/v7/cardinfo.php?num=20&offset=0", {
          params: {
            fname: cerca,
            // archetype: archetype,
          },
        })
        .then((res) => {
          console.log(res);
          console.log(res.data);
          console.log(res.data.data);
          this.store.cards = res.data.data;
          console.log(this.store.cards);
        })
        .catch((error) => {
          this.store.cards = [];
        });

      //********************
      // FINE METHODS
    },
  },
  //******************** */
  created() {
    this.prendiCard();
  },
};
</script>

<style lang="scss" scoped>
@use "../style/partials/variables" as *;
select {
  width: 200px;
  height: 30px;
  margin: 30px 10px;
}
.container.box {
  background-image: url(../assets/tumblr_ntahc6bHBL1uue2e4o1_500.gif);
  padding: 50px;
  color: black;
}
.grid {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  gap: 40px;
  z-index: 999;
}
.error {
  text-transform: uppercase;
  color: red;
  text-align: center;
  font-size: 45px;
  font-weight: bolder;
  &::before {
    content: "---->";
    color: greenyellow;
  }
  &::after {
    content: "<----";
    color: greenyellow;
  }
}
</style>
