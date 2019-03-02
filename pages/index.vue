<template>
  <section class="container">
    <div>
      <logo />
      <h1 class="title">
        nuxt_blog
      </h1>

      <h2 class="subtitle">
        personal website made with nuxtjs
      </h2>

      <BlogSection :blogs="blogs" />
    </div>
  </section>
</template>

<script>
import Logo from '~/components/Logo.vue'
import BlogSection from '~/components/Sections/BlogList'

const blogs = ['blog-1', 'blog-2']

export default {
  components: {
    Logo,
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

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
