import { createRouter, createWebHistory } from "vue-router";

import Home from "./pages/Home.vue";
import Portfolio from "./pages/Portfolio.vue";
import ChiSono from "./pages/ChiSono.vue";
import PortfolioShow from "./pages/Portfolio.show.vue";
import NotFound from "./pages/404.vue";
import Contattami from "./pages/Contattami.vue";
const history = createWebHistory();
console.log("history: ", history);

const router = createRouter({
  history,
  routes: [
    {
      path: "/",
      name: "home",
      component: Home,
    },
    {
      path: "/portfolio",
      name: "portfolio",
      component: Portfolio,
    },
    {
      path: "/portfolio/:slug",
      name: "portfolio.show",
      component: PortfolioShow,
      props: true,
    },
    {
      path: "/about-me",
      name: "about-me",
      component: ChiSono,
    },
    {
      path: "/contattami",
      name: "contattami",
      component: Contattami,
    },
    {
      path: "/404",
      name: "404",
      component: NotFound,
    },
  ],
});

export { router };
