<template>
  <DefaultLayout>
    <div class="container">
      <h1 class="text-center text-uppercase fs-1 fw-bolder py-5">contattami</h1>
    </div>
    <div
      v-if="success"
      class="t text-bg-success text-center text-uppercase mb-5 fw-bolder fs-3"
    >
      Messaggio inviato con successo!
    </div>
    <div class="container">
      <form v-if="loading === false" @submit.prevent="sendForm()">
        <div class="mb-3">
          <label for="" class="form-label">Nome</label>
          <input
            v-model="name"
            type="text"
            name="name"
            class="form-control"
            :class="[errors && errors.name ? 'scb-error' : '']"
            placeholder="Inserisci il tuo nome"
          />
          <div v-if="errors && errors.name" class="form-text text-danger">
            <span v-for="error in errors.name" :key="error">
              {{ error }}
            </span>
          </div>
        </div>

        <div class="mb-3">
          <label for="" class="form-label">E-M@IL</label>
          <input
            v-model="email"
            type="email"
            name="email"
            class="form-control"
            :class="[errors && errors.email ? 'scb-error' : '']"
            placeholder="Inserisci la tua e-m@il"
          />
          <div v-if="errors && errors.email" class="form-text text-danger">
            <span v-for="error in errors.email" :key="error">
              {{ error }}
            </span>
          </div>
        </div>

        <div class="mb-3">
          <label
            for="autoSizingInput"
            class="form-label d-block"
            :class="[errors && errors.message ? 'scb-error' : '']"
            >Messaggio <br />
            <span
              class="scb-message"
              :class="
                textAreaValidate() === false ? ' fw-bolder text-bg-danger' : ''
              "
              >caratteri a disposizione: {{ 1000 - message.length }}</span
            ></label
          >

          <div class="form-floating">
            <textarea
              v-model="message"
              name="message"
              style="height: 250px"
              class="form-control"
              :class="textAreaValidate() === false ? 'scb-error' : ''"
              placeholder="Scrivi il tuo Messaggio"
            >
            </textarea>
          </div>

          <div v-if="errors && errors.message" class="form-text text-danger">
            <span
              class="fw-bolder"
              v-for="error in errors.message"
              :key="error"
            >
              {{ error }}
            </span>
          </div>
        </div>
        <div class="">
          <button
            type="submit"
            class="btn btn-warning"
            :class="formValidate() === true ? 'd-inline' : 'd-none'"
          >
            INVIA MAIL
          </button>
        </div>
      </form>
      <div v-else class="load">
        <img src="/img/mail-animation.gif" alt="" />
      </div>
      <div class="back">
        <button @click="goBack()" class="btn btn-primary text-uppercase">
          torna indietro
        </button>
      </div>
    </div>
  </DefaultLayout>
</template>

<script>
import DefaultLayout from "../layouts/Default.vue";
import axios from "axios";
export default {
  components: {
    DefaultLayout,
    // **************************
    // FINE COMPONETS
  },
  // **************************
  data() {
    return {
      name: "",
      email: "",
      message: "",
      success: false,
      errors: null,
      loading: false,

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
    goBack() {
      history.go(-1);
      return true;
    },
    textAreaValidate() {
      let messageLenghtValid = this.message.length <= 1000;
      return messageLenghtValid;
    },

    formValidate() {
      let nameValid = this.name.trim() !== "";
      let emailValid = this.email.trim() !== "";
      let messageValid = this.message.trim() !== "";
      let messageLenghtValid = this.message.trim().length <= 1000;

      return nameValid && emailValid && messageValid && messageLenghtValid;
    },

    sendForm() {
      let data = {
        name: this.name,
        email: this.email,
        message: this.message,
      };
      this.loading = true;
      axios
        .post("http://127.0.0.1:8000/api/contacts", data)
        .then((res) => {
          let { success, errors } = res.data;
          this.success = success;

          if (success) {
            this.name = "";
            this.email = "";
            this.message = "";
            this.errors = null;
          } else {
            this.errors = errors;
          }
        })
        .catch((err) => {})
        .finally(() => {
          this.loading = false;
        });
    },
    // **************************
    // FINE METHODS
  },
  // **************************
};
</script>

<style lang="scss" scoped>
@use "../style/partials//variables" as *;
.load {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100vh;
  font-size: 50px;
}
.scb-error {
  border: 5px solid red;
  color: red;
  font-weight: bolder;
}
.scb-message {
  color: aqua;
}
.scb-text-area {
  height: 200px;
}
.back {
  display: flex;
  align-items: center;
  justify-content: flex-end;
  // transform: translateY(-40px);
}
</style>
