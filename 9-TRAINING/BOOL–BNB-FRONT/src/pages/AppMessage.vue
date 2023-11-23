<template>
  <div class="centered">
    <div class="card">
      <div class="card-header">
        <h2 class="text-uppercase">
          invia messaggio per l'appartamento <br />
          <span class="text-danger text-uppercase fw-bolder">{{
            appartment.name
          }}</span>
        </h2>
      </div>
      <form @submit.prevent="handleSubmit">
        <label for="name">Nome</label>
        <input
          v-model="formData.name"
          type="text"
          name="name"
          :class="{ error: errors.name }"
          required
        />
        <div v-if="errors.name" class="error-message">{{ errors.name }}</div>

        <label for="surname">Cognome</label>
        <input
          v-model="formData.lastname"
          type="text"
          name="lastname"
          :class="{ error: errors.lastname }"
          required
        />
        <div v-if="errors.lastname" class="error-message">
          {{ errors.lastname }}
        </div>

        <label for="email">Email</label>
        <input
          v-model="formData.email"
          type="email"
          name="email"
          :class="{ error: errors.email }"
          required
        />
        <div v-if="errors.email" class="error-message">{{ errors.email }}</div>

        <label for="text">Messaggio:</label>
        <div
          class="text_num"
          :class="{ 'red-text': text_num < 5 || text_num > 3000 }"
        >
          Caratteri: {{ text_num }}
        </div>
        <textarea
          required
          v-model="formData.text"
          @input="textCount"
          name="text"
          id="text"
          cols="30"
          rows="10"
          style="resize: none"
          :class="{ error: errors.message }"
        ></textarea>
        <div id="my_text" class="invisible text-danger">
          <p>Il messaggio deve avere almeno 5 caratteri;</p>
          <p>Il messaggio deve avere al massimo 3000 caratteri;</p>
        </div>
        <div v-if="errors.message" class="error-message">
          {{ errors.message }}
        </div>
        <input
          type="hidden"
          v-model="formData.appartment_id"
          name="appartment_id"
        />
        <button @click="checkText" type="submit">Invia</button>
      </form>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "AppMessage",
  data() {
    return {
      appartment: {},
      formData: {
        name: "",
        lastname: "",
        email: "",
        text: "",
        text_num: 0,

        appartment_id: null,
      },
      errors: {},
    };
  },

  methods: {
    fetchAppartment() {
      const id = this.$route.params.id;

      axios
        .get(`http://127.0.0.1:8000/api/appartments/${id}`)
        .then((response) => {
          this.appartment = response.data;

          this.formData.appartment_id = this.appartment.id;
        });
    },

    handleSubmit() {
      this.errors = {};

      axios
        .post("http://localhost:8000/api/messages", this.formData)
        .then((response) => {
          console.log(response.data);
          this.$router.push({ name: "home.show" });
        })

        .catch((error) => {
          if (error.response && error.response.data.errors) {
            this.errors = error.response.data.errors;
          } else {
            console.error("Errore durante l'invio del messaggio:", error);
          }
        });
    },
    checkText() {
      const text = document.getElementById("my_text");
      if (this.formData.text.length <= 5) {
        text.classList.remove("invisible");
      } else {
        text.classList.add("invisible");
      }
    },
    textCount() {
      this.text_num = this.formData.text.length;
      console.log(this.text_num);
    },
  },
  mounted() {
    this.fetchAppartment();
  },
};
</script>

<style scoped lang="scss">
.centered {
  display: flex;
  justify-content: center;
  align-items: center;

  overflow-y: hidden;
}

.card {
  width: 50%;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  overflow-x: hidden;
}

.card-header {
  text-align: center;
  margin-bottom: 20px;
}

form {
  display: flex;
  flex-direction: column;
}

label {
  margin-top: 10px;
}

input,
textarea {
  margin-bottom: 10px;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

button {
  padding: 10px;
  background-color: #4caf50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

button:hover {
  background-color: #45a049;
}

.error {
  border-color: red;
}

.error-message {
  color: red;
  margin-top: 5px;
}
.red-text {
  color: red;
}
</style>
