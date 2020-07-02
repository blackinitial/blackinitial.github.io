<template lang="pug">
  main
    Navigation(
      prev="about"
      next="blog"
    )
    .container
      .hero
        h1.display-1 BLACK INITIAL
        h2.display-4 personal website made with nuxtjs
</template>

<script>
import { TimelineMax, TweenMax } from 'gsap'
import Navigation from '~/components/Navigation.vue'
import BlogSection from '~/components/Sections/BlogList'

export default {
  components: {
    Navigation,
    BlogSection
  },

  transition: {
    mode: 'out-in',
    css: false,
    enter(el, done) {
      const tl = new TimelineMax({ onComplete: done })

      tl.add('start')

      // eslint-disable-next-line no-undef
      const split1 = new SplitText('h1', { type: 'chars' })
      const chars1 = split1.chars

      // eslint-disable-next-line no-undef
      const split2 = new SplitText('h2', { type: 'chars' })
      const chars2 = split2.chars

      // eslint-disable-next-line no-unused-vars
      function random(min, max) {
        return Math.random() * (max - min) + min
      }

      for (let index = 0; index < chars1.length; index++) {
        TweenMax.from(chars1[index], 2, {
          opacity: 0,
          x: random(-500, 500),
          y: random(-500, 500),
          z: random(-500, 500),
          scale: 0.1,
          delay: index * 0.02,
          yoyo: true,
          repeat: -1,
          repeatDelay: 10,
          onComplete: done
        })
      }

      for (let index = 0; index < chars2.length; index++) {
        TweenMax.from(chars2[index], 2, {
          opacity: 0,
          x: random(-500, 500),
          y: random(-500, 500),
          z: random(-500, 500),
          scale: 0.1,
          delay: index * 0.02,
          yoyo: true,
          repeat: -1,
          repeatDelay: 10,
          onComplete: done
        })
      }
    },
    leave(el, done) {
      const tl = new TimelineMax({ onComplete: done })

      tl.add('leave')

      // eslint-disable-next-line no-undef
      const split1 = new SplitText('h1', { type: 'chars' })
      const chars1 = split1.chars

      // eslint-disable-next-line no-undef
      const split2 = new SplitText('h2', { type: 'chars' })
      const chars2 = split2.chars

      // eslint-disable-next-line no-unused-vars
      function random(min, max) {
        return Math.random() * (max - min) + min
      }

      for (let index = 0; index < chars1.length; index++) {
        TweenMax.to(chars1[index], 2, {
          opacity: 0,
          x: random(-500, 500),
          y: random(-500, 500),
          z: random(-500, 500),
          scale: 0.1,
          delay: index * 0.02,
          yoyo: true,
          repeat: -1,
          repeatDelay: 10,
          onComplete: done
        })
      }

      for (let index = 0; index < chars2.length; index++) {
        TweenMax.to(chars2[index], 2, {
          opacity: 0,
          x: random(-500, 500),
          y: random(-500, 500),
          z: random(-500, 500),
          scale: 0.1,
          delay: index * 0.02,
          yoyo: true,
          repeat: -1,
          repeatDelay: 10,
          onComplete: done
        })
      }
    }
  }
}
</script>
