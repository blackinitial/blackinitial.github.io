<template>
  <div class="page-blog">
    <div class="container">
      <BlogSection :blogs="blogs" />
    </div>
  </div>
</template>

<script>
import BlogSection from '~/components/Sections/BlogList'

const blogs = ['blog-1', 'blog-2']

export default {
  components: {
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
