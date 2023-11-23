<template>
  <section class="teachers">
    <h1 class="title_teachers">La nostra vetrina di professionisti</h1>
    <h5>Cerca attraverso i filtri</h5>
    <div class="filter">
      <input
        type="text"
        class="select_filter"
        v-model="search"
        placeholder="Cerca teacher"
      />

      <select v-model="selectedStars" class="select_filter">
        <option value="">Stelle</option>
        <option v-for="star in votes" :value="star" :key="star.id">
          {{ star }}
        </option>
      </select>

      <select v-model="selectedSpecialization" class="select_filter">
        <option value="">Tutte le specializzazioni</option>
        <option
          v-for="specialization in specializations"
          :value="specialization"
          :key="specialization"
        >
          {{ specialization }}
        </option>
      </select>
    </div>

    <div v-if="teachers.length">
      <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4 mt-4">
        <TeacherCard
          v-for="teacher in filteredTeachers"
          :teacher="teacher"
          :specializations="teacher.specializations"
          :key="teacher.id"
        ></TeacherCard>
      </div>
      <div v-if="filteredTeachers.length == 0" class="no-results">
        Nessun professore trovato.
      </div>
    </div>
    <div v-else class="no-results">Caricamento in corso...</div>
  </section>
</template>

<script>
import axios from "axios";
import TeacherCard from "./TeacherCard.vue";
import store from "../store";

export default {
  components: {
    TeacherCard,
  },
  data() {
    return {
      teachers: [],
      specializations: [],
      selectedSpecialization: "",
      search: "",
      selectedStars: "",
      votes: [],
      store,
      // reviews: 0
    };
  },
  methods: {
    fetchTeachers() {
      axios
        .get("http://127.0.0.1:8000/api/teachers")
        .then((response) => {
          const results = response.data.results;
          this.teachers = results;

          const allSpecializations = results.flatMap(
            (teacher) => teacher.specializations
          );
          this.specializations = [
            ...new Set(allSpecializations.map((spec) => spec.name)),
          ];

          const allStars = results.flatMap((teacher) => teacher.votes);
          this.votes = [...new Set(allStars.map((star) => star.vote))];

          // console.log(this.reviews)
          // console.log(this.votes)
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
  mounted() {
    this.fetchTeachers();
  },
  computed: {
    filteredTeachers() {
      return this.teachers.filter((teacher) => {
        const specializations = teacher.specializations.map(
          (spec) => spec.name
        );
        const totalVotes = teacher.votes.reduce(
          (sum, vote) => sum + vote.vote,
          0
        );
        const votesRound = Math.round(totalVotes / teacher.votes.length);
        let nameTeacher = teacher.user.name.toLowerCase();
        const search = this.search.trim().toLowerCase();

        const specializationFilter =
          !this.selectedSpecialization ||
          specializations.includes(this.selectedSpecialization);
        const starsFilter =
          !this.selectedStars || votesRound >= this.selectedStars;
        const nameFilter = !this.search || nameTeacher.includes(search);

        return specializationFilter && starsFilter && nameFilter;
      });
    },
  },
};
</script>

<style lang="scss">
@use "../style/partials/variables.scss" as *;

.title_teachers{
  color: $light_green;
  padding: 5px;
  border-left: 2px solid $light_green;
  border-right: 2px solid $light_green;
  border-bottom: 2px solid $light_green;
}

.filter {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 20px;

  .select_filter {
    margin: 15px;
    padding: 5px;
    border: 1px solid $light_green;
    border-radius: 20px;
  }
}

.hidden {
  display: none;
}

.no-results {
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: larger;
  color: $light_green;
  padding-top: 50px;
}

@media only screen and (max-width: 774px) {

  .filter{
    flex-wrap: wrap;
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
