<template lang="pug">
  main
    Navigation(
      prev="blog"
      next="/"
    )
    .container
      .hero
        h1 About
        h5 Seseorang penggiat dan antusias dengan dunia Frontend Web. Pengguna GNU/Linux.
</template>

<script>
import Navigation from '~/components/Navigation.vue'

export default {
  components: { Navigation }
}
</script>
