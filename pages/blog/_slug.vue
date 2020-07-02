<template lang="pug">
  main
    .container
      .content.single-post
        NavBack#back

        .head-post#title
          h1.is-uppercase {{ title }}
          .meta
            span {{ new Date(date).toDateString('id-ID') }}
            span.tag(v-for="tag in tags") {{ tag }}
          h6 {{ description }}
          br
        markdown#content(:render-func='renderFunc', :static-render-funcs='staticRenderFuncs')
</template>

<script>
import { TimelineMax, TweenMax, Sine } from 'gsap'
import NavBack from '~/components/NavBack.vue'
import Markdown from '~/components/Markdown.vue'

export default {
  components: {
    NavBack,
    Markdown
  },

  transition: {
    mode: 'out-in',
    css: false,
    enter(el, done) {
      const tl = new TimelineMax({ onComplete: done })

      tl.from(
        '#back',
        0.5,
        {
          opacity: 0,
          x: 25,
          transformOrigin: '0',
          ease: Sine.easeOut
        },
        0.25
      )

      TweenMax.from(
        '#title',
        0.5,
        {
          autoAlpha: 0,
          y: '30'
        },
        0
      )

      TweenMax.from(
        '#content',
        0.5,
        {
          autoAlpha: 0,
          x: '-30'
        },
        0
      )
    },
    leave(el, done) {
      const tl = new TimelineMax({ onComplete: done })

      tl.to('#back', 0.5, {
        opacity: 0,
        x: 25,
        ease: Sine.easeIn
      })

      TweenMax.to(
        '#title',
        0.5,
        {
          autoAlpha: 0,
          y: '30'
        },
        0
      )

      TweenMax.to(
        '#content',
        0.5,
        {
          autoAlpha: 0,
          x: '-30'
        },
        0
      )
    }
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
