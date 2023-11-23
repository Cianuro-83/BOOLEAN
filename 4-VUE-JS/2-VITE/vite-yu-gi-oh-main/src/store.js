import { reactive } from "vue";

const store = reactive({
  cards: [],
  count: 0,
  pages: 0,
  currentPage: 1,
  cerca: "",
  selectArchetype: "",
  num: "50",
});

export default store;
