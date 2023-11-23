<template>
  <div class="main-content">
    <div class="container">
      <div class="poi">
        <div class="blog" v-for="(blog, i) in examples" :key="i">
          <img :src="blog.src" alt="" />
          <div class="prova">
            <p class="description">{{ blog.description }}</p>
          </div>
          <span class="author">{{ blog.author }}</span>
          <img class="babge" :src="blog.date" alt="" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  components: {
    // **************************
    // FINE COMPONETS
  },
  // **************************
  data() {
    return {
      examples: [
        {
          src: `/img/h-2-blog-img-1.jpg`,
          date: `/svg/badge.svg`,
          description: `This way, loves: a detailed guide trow new design`,
          author: `By Emily Fields`,
        },
        {
          src: `/img/h-2-blog-img-2.jpg`,
          date: `/svg/badge.svg`,
          description: `I try to give people a different way to looking art`,
          author: `By Emily Fields`,
        },
        {
          src: `/img/h-2-blog-img-3.jpg`,
          date: `/svg/badge.svg`,
          description: `Introduce Richard Laperrière of those amazing features`,
          author: `By Emily Fields`,
        },
      ],
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
.main-content {
  width: 100%;
}
.container {
  margin: 0;
  padding: 0;
  width: 1300px;
  margin: 150px auto;
  position: relative;
}
.poi {
  display: flex;
  justify-content: space-between;
  gap: 35px;
  // overflow: hidden;
  div {
    width: 410px;
    img {
      margin-bottom: 35px;
      cursor: pointer;
      &:hover {
        transform: scale(1.1);
        transition: all 1s ease-in-out;
      }
    }
    p {
      font-size: 20px;
      cursor: pointer;
      &::after {
        content: "";
        display: block;
        height: 3px;
        width: 0;
        background: transparent;
        transition: width 1s ease, background-color 1s ease-in-out;
      }
      &:hover::after {
        width: 100%;
        background: $footer;
      }
      &::before {
        content: "";
        display: block;
        height: 3px;
        width: 0;
        background: transparent;
        transition: width 1s ease, background-color 1s ease-in-out;
        position: absolute;
        bottom: 70px;
      }
      &:hover::before {
        width: 32%;
        background: $footer;
      }
      .prova {
        position: relative;
      }
    }
    .author {
      font-style: italic;
      font-weight: lighter;
      font-size: 12px;
      cursor: pointer;
    }
  }
}
.babge {
  width: 65px;
  position: absolute;
  z-index: 999;
  top: -25px;
  transform: translateX(16px);
  filter: drop-shadow(0 0 0.1rem rgb(41, 40, 40));
  cursor: pointer;
}
.blog {
  overflow: hidden;
}
</style>
