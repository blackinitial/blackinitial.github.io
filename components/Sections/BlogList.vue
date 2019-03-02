i<template>
  <div>
    <h2>Blog List</h2>

    <div v-for="blog in blogs" :key="blog.title">
      <nuxt-link :to="{ name: 'blog-slug', params: { slug: blog.name }}">
        <h4>{{ blog.title }}</h4>
        <p>{{ blog.description }}</p>
      </nuxt-link>
    </div>
  </div>
</template>
<script>
export default {
  props: {
    blogs: { type: Array, default: () => {} }
  }
}
</script>
