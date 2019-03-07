<template lang="pug">
  main
    Navigation(
      prev="about"
      next="blog"
    )
    .container
      .hero
        h1 BLACK INITIAL
        h2 personal website made with nuxtjs
      //- blog-section(:blogs='blogs')
</template>

<script>
import Navigation from '~/components/Navigation.vue'
import BlogSection from '~/components/Sections/BlogList'

const blogs = ['blog-1', 'blog-2']

export default {
  components: {
    Navigation,
    BlogSection
  },

  asyncData() {
    async function asyncImport(blogName) {
      const listBlog = await import(`~/contents/blog/${blogName}.md`)
      return listBlog.attributes
    }
    return Promise.all(blogs.map(blog => asyncImport(blog))).then(res => {
      return { blogs: res }
    })
  }
}
</script>
