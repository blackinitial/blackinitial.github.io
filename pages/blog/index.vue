<template lang="pug">
  main
    Navigation#nav(
      prev="/"
      next="about"
    )
    .container
      .content
        blog-section(:blogs="blogs")
</template>

<script>
import { TimelineMax, Sine } from 'gsap'
import Navigation from '~/components/Navigation.vue'
import BlogSection from '~/components/Sections/BlogList'

import blogList from '~/contents/blogList.js'

export default {
  components: {
    Navigation,
    BlogSection
  },

  transition: {
    mode: 'out-in',
    css: false,
    leave(el, done) {
      const tl = new TimelineMax({ onComplete: done })

      tl.to('.container', 0.5, {
        opacity: 0,
        ease: Sine.easeInOut
      })
    }
  },

  asyncData() {
    async function asyncImport(blogName) {
      const listBlog = await import(`~/contents/blog/${blogName}.md`)
      return listBlog.attributes
    }
    return Promise.all(blogList.map(blog => asyncImport(blog))).then(res => {
      return { blogs: res }
    })
  }
}
</script>
