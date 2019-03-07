<template lang="pug">
  main
    NavBack
    .container
      .content.single-post
        .head-post
          h1 {{ title }}
          .meta
            span {{ new Date(date).toDateString('id-ID') }}
            span.tag(v-for="tag in tags") {{ tag }}
          h6 {{ description }}
          br
        markdown(:render-func='renderFunc', :static-render-funcs='staticRenderFuncs')
</template>

<script>
import NavBack from '~/components/NavBack.vue'
import Markdown from '~/components/Markdown.vue'

export default {
  components: {
    NavBack,
    Markdown
  },

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
      date: attr.date,
      tags: attr.tags,
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
