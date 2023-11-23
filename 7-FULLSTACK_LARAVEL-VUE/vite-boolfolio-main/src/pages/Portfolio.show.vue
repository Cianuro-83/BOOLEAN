<template>
  <DefaultLayaout>
    <template v-if="loading === false">
      <div class="container">
        <img v-if="project.cover_image" :src="project.cover_path" alt="" />
        <h1 class="text-center text-uppercase fw-semibold my-5 text-info">
          {{ project.title }}
        </h1>
        <p class="" v-if="project.type">
          <span>Tipologia del progetto: </span>
          <span class="badge text-bg-warning">{{ project.type.name }}</span>
        </p>
        <div v-if="project.technologies && project.technologies.length > 0">
          <span class="me-2">Tecnologie utilizzate:</span>

          <span v-for="tech in project.technologies" :key="tech.slug">
            <span
              class="badge text-bg-success me-3"
              v-if="project.technologies"
              >{{ tech.name }}</span
            >
          </span>
        </div>
      </div>

      <div class="container py-4">
        <div class="scb" v-html="project.description"></div>
      </div>

      <div class="container" v-if="relatedProjects.length > 0">
        <ul class="poi">
          <li v-for="related in relatedProjects" :key="related.id">
            <ProjectCard :project="related" class:="io"/>
          </li>
        </ul>
      </div>
    </template>
    <div v-else class="load">
      <div>
        <div class="spinner-grow text-primary" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-secondary" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-success" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-danger" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-warning" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-info" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-light" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-dark" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
      </div>
      Loading...
      <div>
        <div class="spinner-grow text-primary" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-secondary" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-success" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-danger" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-warning" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-info" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-light" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="spinner-grow text-dark" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
      </div>
    </div>
  </DefaultLayaout>
</template>

<script>
import DefaultLayaout from "../layouts/Default.vue";
import axios from "axios";
import ProjectCard from "../components/ProjectCard.vue";
export default {
  components: {
    DefaultLayaout,
    ProjectCard,
    // **************************
    // FINE COMPONETS
  },
  // **************************
  props: ["slug"],
  data() {
    return {
      project: null,
      loading: true,
      // **************************
      // FINE DATA E RETURN &
    };
  },
  // **************************
  computed: {
    relatedProjects() {
      if (this.project.relatedProjects) {
        return this.project.relatedProjects;
      }
      return [];
    },
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
    fetchProjects(slug) {
      this.loading = true;
      axios
        .get(`http://127.0.0.1:8000/api/projects/${slug}`)
        .then((res) => {
          let { success, project } = res.data;
          console.log(res.data);
          if (success) {
            this.project = project;
          } else {
            // this.$router.replace({ name: '404' })
          }
        })
        .catch((err) => {
          console.log(err);
          this.$router.replace({ name: "404" });
        })
        .finally(() => {
          this.loading = false;
        });
    },
    // **************************
    // FINE METHODS
  },
  // **************************
  created() {
    this.fetchProjects(this.slug);
  },
  beforeRouteUpdate(to, from) {
    const newSlug = to.params.slug;

    this.fetchProjects(newSlug);
  },
};
</script>

<style lang="scss" scoped>
@use "../style/partials//variables" as *;
.scb {
  text-align: justify;
}

.poi {
  gap: 10px;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  align-items: center;
}
.load {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100vh;
  font-size: 50px;
}
</style>
