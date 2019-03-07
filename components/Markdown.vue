<script>
import hljs from 'highlight.js'
import 'highlight.js/styles/atom-one-dark-reasonable.css'

export default {
  props: {
    renderFunc: {
      type: String,
      required: true
    },
    staticRenderFuncs: {
      type: String,
      required: true
    }
  },

  mounted() {
    this.initHighlightJs()
  },

  created() {
    // eslint-disable-next-line no-new-func
    this.templateRender = new Function(this.renderFunc)()
    // eslint-disable-next-line no-new-func
    this.$options.staticRenderFns = new Function(this.staticRenderFuncs)()
  },

  methods: {
    initHighlightJs() {
      const targets = document.querySelectorAll('code')
      targets.forEach(target => {
        hljs.highlightBlock(target)
      })
    }
  },

  render(createElement) {
    return this.templateRender
      ? this.templateRender()
      : createElement('div', 'Rendering')
  }
}
</script>
