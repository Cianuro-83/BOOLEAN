<template>
  <main>
    <div class="container">
      <select name="cianuro" id="">
        <option selected>Open this select menu</option>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
      </select>
    </div>
    <div class="container box">
      <div class="card">
        <TotCards />
        <ul class="grid">
          <Card v-for="(el, i) in this.store.cards" :key="el.id" :card="el" />
        </ul>
      </div>
    </div>
  </main>
</template>

<script>
import axios from "axios";
import Card from "./Card.vue";
import store from "../store";
import TotCards from "./TotCards.vue";
export default {
  components: {
    Card,
    TotCards,
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
      axios
        .get("https://db.ygoprodeck.com/api/v7/cardinfo.php?num=20&offset=0")
        .then((res) => {
          console.log(res);
          console.log(res.data);
          console.log(res.data.data);
          this.store.cards = res.data.data;
          console.log(this.cards);
        });
    },
    //********************
    // FINE METHODS
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
}
</style>
