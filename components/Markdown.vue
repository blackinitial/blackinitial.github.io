<script>
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

  created() {
    // eslint-disable-next-line no-new-func
    this.templateRender = new Function(this.renderFunc)()
    // eslint-disable-next-line no-new-func
    this.$options.staticRenderFns = new Function(this.staticRenderFuncs)()
  },

  render(createElement) {
    return this.templateRender
      ? this.templateRender()
      : createElement('div', 'Rendering')
  }
}
</script>
