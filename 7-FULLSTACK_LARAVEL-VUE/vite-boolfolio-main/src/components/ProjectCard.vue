<template>
  <div class="container my-5">
    <div class="project-card">
      <div class="card scb">
        <router-link
          :to="{ name: 'portfolio.show', params: { slug: project.slug } }"
          class="prova-link"
        >
          <div class="card-body">
            <h3 class="card-title text-center fw-bold text-danger">
              {{ project.title }}
            </h3>
            <h5 class="card-subtitle mb-2 text-body-secondary mt-5">
              <span class="fw-bolder">TIPOLOGIA: </span>
              <span>{{ project.type ? project.type.name : "---" }}</span>
            </h5>
            <div class="card-text description">
              <p class="mt-5 fw-bolder">DESCRIZIONE:</p>
              <p>{{ project.description }}</p>
            </div>
            <p
              class="mt-5 fw-bolder"
              v-if="project.technologies && project.technologies.length > 0"
            >
              TECNOLOGIE USATE:
            </p>
            <ul
              class="tech-list"
              v-if="project.technologies && project.technologies.length > 0"
            >
              <li
                class="tech"
                v-for="project in project.technologies"
                :key="project.id"
              >
                {{ project.name }}
              </li>
            </ul>
          </div>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    project: {
      type: Object,
      required: true,
    },
    // **************************
    // FINE PROPS
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
  background-color: darkblue;
  width: 100%;
}

.project-card {
  height: 100%;
  display: flex;
}

.description {
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}
.prova-link {
  text-decoration: none;
  color: currentColor;
}
</style>
