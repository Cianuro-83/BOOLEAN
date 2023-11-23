<script>

export default {

    data() {
        return {
            routes_links : [
              {
                link: 'Home',
                name_route: 'home'
              },
              {
                link: 'Corsi',
                name_route: 'courses'
              },
              {
                link: 'Professori',
                name_route: 'teachers.index'
              }
                
            ]
            
        }
    }

}

</script>

<template>
    <nav class="navbar navbar-expand-lg bg-body-tertiary nav_text">
        <div class="container d-flex">
            <a class="navbar-brand logo" href="#">
              <img src="/public/img/logo.png" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item" v-for="link in routes_links" :key="link.name_route">
                  <router-link :to="{ name: link.name_route }">
                    {{ link.link }}
                  </router-link>
                </li>
                <li class="nav-item">
                  <a href="http://127.0.0.1:8000/login">
                    Login
                  </a>
                </li>
                <li class="nav-item">
                  <a href="http://127.0.0.1:8000/register">
                    Registrati
                  </a>
                </li>
              </ul>
            </div>
        </div>
    </nav>

</template>

<style lang="scss">
@use '../style/partials/variables.scss' as *;

.navbar-toggler,
.nav_text *{
  color: $white-gold !important;
}

.navbar{
  background-color: $light_green;
  font-weight: 400;
  .logo{
    width: 150px;
  }

  .navbar-collapse{
    flex-grow: 0;

    .navbar-nav{
      gap: 20px;
    }
  }
}


</style>