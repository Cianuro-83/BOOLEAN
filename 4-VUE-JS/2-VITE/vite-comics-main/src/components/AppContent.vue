<!-- **************************
HTML
************************** -->
<template>
  <main>
    <div class="container">
      <button class="button-top">current series</button>
      <div class="locandine">
        <ul class="grid">
          <AppCard
            class="prova"
            v-for="el in comics"
            :key="comics.series"
            :comics="el"
          />
        </ul>
        <div class="flex">
          <button class="button-bottom">load more</button>
        </div>
      </div>
    </div>
  </main>
</template>

<!-- **************************
JAVA SCRIPT
************************** -->
<script>
import AppCard from "./AppCard.vue";
export default {
  components: {
    AppCard,
  },
  data() {
    return {
      comics: [
        {
          thumb: "../../public/img/dc-comics1.jpg",
          price: "$19.99",
          series: "Action Comics",
          type: "comic book",
        },
        {
          thumb: "../../public/img/dc-comics2.jpg",
          price: "$3.99",
          series: "American Vampire 1976",
          type: "comic book",
        },
        {
          thumb: "../../public/img/dc-comics3.jpg",
          price: "$16.99",
          series: "Aquaman",
          type: "graphic novel",
        },
        {
          thumb: "../../public/img/dc-comics4.jpg",
          price: "$2.99",
          series: "Batgirl",
          type: "comic book",
        },
        {
          thumb: "../../public/img/dc-comics5.jpg",
          price: "$3.99",
          series: "Batman",
          type: "comic book",
        },
        {
          thumb: "../../public/img/dc-comics6.jpg",
          price: "$2.99",
          series: "Batman Beyond",
          type: "comic book",
        },
        {
          thumb: "../../public/img/dc-comics7.jpg",
          price: "$3.99",
          series: "Batman/Superman",
          type: "comic book",
        },
        {
          thumb: "../../public/img/dc-comics8.jpg",
          price: "$4.99",
          series: "Batman/Superman Annual",
          type: "comic book",
        },
        {
          thumb: "../../public/img/dc-comics9.jpg",
          price: "$5.99",
          series: "Batman: The Joker War Zone",
          type: "comic book",
        },
        {
          thumb: "../../public/img/dc-comics10.jpg",
          price: "$6.99",
          series: "Batman: Three Jokers",
          type: "comic book",
        },
        {
          thumb: "../../public/img/dc-comics11.jpg",
          price: "$4.99",
          series: "Batman: White Knight Presents: Harley Quinn",
          type: "comic book",
        },
        {
          thumb: "../../public/img/dc-comics2.jpg",
          price: "$16.99",
          series: "Catwoman",
          type: "graphic novel",
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
main {
  background-color: #1c1c1c;
}
.container {
  position: relative;
  padding: 30px 0;
}
.button-top {
  line-height: 2.5rem;
  background-color: #0182f9;
  border-color: #0182f9;
  padding: 0 1.5rem;
  text-transform: uppercase;
  font-size: 20px;
  font-weight: bold;
  color: white;
  position: absolute;
  top: -25px;
  left: 0;
  cursor: pointer;
}
.locandine {
  color: white;
}
.grid {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  //   grid-template-columns: 6, 1fr;
  li {
    width: calc(100% / 6 - 20px * 5 / 6);
    margin-bottom: 20px;
    cursor: pointer;
  }
  img {
    width: 80%;
  }
  h3 {
    text-transform: uppercase;
    font-weight: normal;
    font-size: 10px;
    margin-top: 10px;
  }
}
.prova {
  text-transform: uppercase;
  font-weight: normal;
  font-size: 10px;
  margin-top: 10px;
}
.prova:hover {
  filter: drop-shadow(0 0 2em #03f032aa);
}
.button-bottom {
  line-height: 1.5rem;
  background-color: #0182f9;
  border-color: #0182f9;
  padding: 0 1rem;
  text-transform: uppercase;
  font-size: 20px;
  font-weight: bold;
  color: white;
  cursor: pointer;
}
.flex {
  display: flex;
  justify-content: center;
  margin-top: 25px;
}
</style>
