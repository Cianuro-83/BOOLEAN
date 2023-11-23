<script>
export default {
  data() {
    return {};
  },
};
</script>

<template>
  <div class="container mt-3">
    <div class="row flex-wrap">
      <div class="col-12 mb-3">
        <h2 class="section__title">Domande frequenti</h2>
      </div>
      <div class="col-12">
        <ul class="faq-list">
          <li class="faq-item">
            <div class="faq-item__header">
              <h4>Quanto guadagna un vostro studente?</h4>
              <i class="fa-solid fa-chevron-down"></i>
            </div>
            <div class="faq-item__body">
              <p>
                Un nostro studente guadagna rispetto a quanto si impegna,
                dipende anche dalla materia in cui intraprende il percorso.
              </p>
            </div>
          </li>
          <li class="faq-item">
            <div class="faq-item__header">
              <h4>Posso fidarmi di un professionista?</h4>
              <i class="fa-solid fa-chevron-down"></i>
            </div>
            <div class="faq-item__body">
              <p>
                I nostri professionisti hanno la voglia di aiutare altre persone
                a non dover fare il loro stesso percorso, molto impegnativo e
                complesso, per arrivare dove sono adesso; Oltre questo, il
                nostro sito ha altretanti professionisti che autenticano la
                vericità della persona che si vuole aggiungere alla nostra
                vetrina.
              </p>
            </div>
          </li>
          <li class="faq-item">
            <div class="faq-item__header">
              <h4>
                Quanto tempo passa prima di avere un buon risultato economico?
              </h4>
              <i class="fa-solid fa-chevron-down"></i>
            </div>
            <div class="faq-item__body">
              <p>
                Un buon risultato economico può arrivare ben presto, anche solo
                entro un anno, dipende, anche qui, da quanto lo studente si
                impegna.
              </p>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <section class="container-footer mt-5 pt-5">
    <div
      class="container d-flex flex-column justify-content-center gap-4 text-center"
    >
      <img src="img/logo.png" alt="logo" class="logo" />
      <p class="text-footer">
        I nostri professori metteranno impegno per farvi arrivare al successo
        che gradite, in base all'impegno di voi stessi; <br />
        con queste premesse possiamo affermare che il successo è garantito!
      </p>
      <p class="text_copyright">
        Copyright 2023 - TMC Holding LLC <br />
        Tutti i diritti riservati.
      </p>
    </div>
  </section>
</template>

<style lang="scss">
@use "../style/partials/variables.scss" as *;

.faq-item {
  border-bottom: 1px solid;
  border-color: #555555;
  padding: 36px 0;

  &:first-child {
    border-top: 1px solid;
  }

  &:hover .faq-item__body {
    display: block;
  }

  .faq-item__header {
    display: flex;
    align-items: center;
    gap: 20px;
    justify-content: space-between;
  }

  .faq-item__body {
    display: none;
    margin-top: 32px;
  }
}

.container-footer {
  background-color: $light_green;
  color: $white_gold;

  .logo {
    width: 20%;
    margin: 0 auto;
  }

  .text_copyright {
    font-size: x-small;
  }
}

@media only screen and (max-width: 774px) {
  .container-footer {
    .logo {
      width: 30%;
    }
    .text-footer {
      font-size: x-small;
    }

    .text_copyright {
      font-size: xx-small;
    }
  }

  .row {
    justify-content: center;
    align-items: center;

    [class*="col-"] {
      width: 100%;
    }
  }
}
</style>
