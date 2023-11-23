<!-- **************************
HTML
************************** -->
<template>
  <li>
    <img :src="comics.thumb" alt="" />
    <h3>{{ comics.series }}</h3>
  </li>
</template>

<!-- **************************
JAVA SCRIPT
************************** -->
<script>
export default {
  props: {
    comics: {
      type: Object,
      required: true,
    },
  },
};
</script>
<!-- **************************
STYLE
************************** -->
<style lang="scss" scoped></style>
