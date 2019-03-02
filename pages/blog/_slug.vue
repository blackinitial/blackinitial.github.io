<template>
  <div class="container">
    <h2>{{ title }}</h2>
    <p>{{ description }}</p>
    <br>
    <Markdown
      :render-func="renderFunc"
      :static-render-funcs="staticRenderFuncs"
    />
  </div>
</template>

<script>
import Markdown from '~/components/Markdown.vue'

export default {
  components: { Markdown },

  data: () => ({
    templateRender: null
  }),

  computed: {
    pageTitle: function() {
      return this.title + ' - Black Initial'
    }
  },

  async asyncData({ params, store }) {
    const file = await import(`~/contents/blog/${params.slug}.md`)
    const attr = file.attributes

    return {
      name: params.slug,
      title: attr.title,
      color: attr.color,
      description: attr.description,
      renderFunc: file.vue.render,
      staticRenderFuncs: file.vue.staticRenderFns
    }
  },

  head() {
    return {
      title: this.pageTitle,
      meta: [
        { name: 'author', content: 'Black Initial' },
        {
          name: 'description',
          property: 'og:description',
          content: this.description,
          hid: 'description'
        },
        { property: 'og:title', content: this.pageTitle },
        { name: 'twitter:description', content: this.description }
      ]
    }
  }
}
</script>
