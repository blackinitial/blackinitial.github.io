<template lang="pug">
  div
    h1 Blog List
    br
    div(v-for="blog in blogs" :key="blog.title")
      nuxt-link(:to="{ name: 'blog-slug', params: { slug: blog.slug }}")
        h5 {{ blog.title }}
        p {{ blog.description }}
</template>
<script>
export default {
  props: {
    blogs: { type: Array, default: () => {} }
  }
}
</script>
