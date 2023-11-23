console.log("Ciao Cianuro... Oggi l'esercizio è  VUE HELLO");

//---------------------------------------------------------------------------
// ⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇ VUE ⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇⬇
//---------------------------------------------------------------------------
const { createApp } = Vue;

createApp({
  data() {
    return {
      message: "ciao simone cianuro buzzeo!!!",
      classMessage: "text-center text-uppercase text-bg-warning fw-bolder fs-1",
      descrizione:
        "oggi è la prima volta che metti le mani su VUE... cerca di non fare danni come al tuo solito...",
      classDescrizione:
        "text-center my-5 text-success fs-3 text-decoration-underline",
      url: "./img/logoCianuro2022.png",
      urlDescription: "logo di Simone Cianuro Buzzeo versione 2022",
    };
  },
}).mount("#app");

//---------------------------------------------------------------------------
// ⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆ VUE ⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆⬆
//---------------------------------------------------------------------------
