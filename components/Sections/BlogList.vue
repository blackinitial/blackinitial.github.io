<template lang="pug">
  div
    h1 Blog List
    br
    div(v-for="blog, index in blogs" :key="blog.title" class="item")
      nuxt-link(:to="{ name: 'blog-slug', params: { slug: blog.slug }}")
        h5 {{ blog.title }}
        p {{ blog.description }}
</template>
<script>
import { TimelineMax } from 'gsap'

export default {
  props: {
    blogs: { type: Array, default: () => {} }
  },

  mounted() {
    const tl = new TimelineMax()

    tl.staggerFrom(
      'h1',
      0.5,
      {
        autoAlpha: 0,
        y: '30'
      },
      0.2
    )

    tl.staggerFromTo(
      '.item',
      0.5,
      {
        autoAlpha: 0,
        x: '-50',
        y: '-10'
      },
      {
        autoAlpha: 0.8,
        x: '0',
        y: '0'
      },
      0.1
    )

    tl.timeScale(1)
  },

  destroyed() {
    const tl = new TimelineMax()

    tl.staggerTo(
      'h1',
      0.5,
      {
        autoAlpha: 0,
        y: '30'
      },
      0
    )

    tl.staggerTo(
      '.item',
      0.5,
      {
        autoAlpha: 0,
        x: '-50',
        y: '-10'
      },
      0
    )

    tl.timeScale(1)
  }
}
</script>
