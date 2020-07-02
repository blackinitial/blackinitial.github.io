<template lang="pug">
  main
    Navigation(
      prev="blog"
      next="/"
    )
    .container
      .hero
        h1.title About
        h5.description Seorang penggiat dan antusias dengan dunia Frontend Web, GNU/Linux User, CLI User, Openbox WM User, Ricing Maniac
</template>

<script>
import { TimelineMax, Sine } from 'gsap'
import Navigation from '~/components/Navigation.vue'

export default {
  components: { Navigation },

  transition: {
    mode: 'out-in',
    css: false,
    enter(el, done) {
      const tl = new TimelineMax({ onComplete: done })

      tl.add('start')

      tl.staggerFrom(
        '.hero',
        0.75,
        {
          rotation: 45,
          opacity: 0.2,
          scale: 0.5,
          transformOrigin: '50% 50%',
          ease: Sine.easeOut
        },
        -0.003,
        'start'
      )

      tl.from(
        '#title',
        0.75,
        {
          opacity: 0,
          ease: Sine.easeInOut
        },
        'start+=0.5'
      )

      tl.staggerFrom(
        '.description',
        0.75,
        {
          z: -100,
          rotationY: 180,
          opacity: 0.5,
          ease: Sine.easeOut
        },
        0.03,
        'start'
      )
    },
    leave(el, done) {
      const tl = new TimelineMax({ onComplete: done })

      tl.add('leave')

      tl.staggerTo(
        '.hero',
        0.75,
        {
          rotation: -45,
          opacity: 0.2,
          scale: 0.5,
          transformOrigin: '50% 50%',
          ease: Sine.easeIn
        },
        0.003,
        'leave'
      )

      tl.to(
        '#title',
        0.75,
        {
          opacity: 0,
          ease: Sine.easeInOut
        },
        'leave'
      )

      tl.to(
        '.description',
        0.75,
        {
          opacity: 0,
          z: -100,
          rotationY: 180,
          scale: 0.5,
          transformOrigin: '50% 50%',
          ease: Sine.easeIn
        },
        'leave'
      )
    }
  }
}
</script>
