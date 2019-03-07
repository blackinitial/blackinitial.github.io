<template lang="pug">
  nav.navigation
    nuxt-link.nav-prev(:to="prev")
      <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="24" height="24" viewBox="0 0 192 192" style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,192v-192h192v192z" fill="none"></path><g id="original-icon" fill="#ffffff"><g id="surface1"><path d="M96,3.9l-41.055,39.42c-1.005,0.945 -1.425,2.355 -1.095,3.69c0.33,1.335 1.35,2.4 2.67,2.775c1.335,0.39 2.76,0.03 3.735,-0.945l31.905,-30.615v166.095c-0.015,1.38 0.705,2.67 1.905,3.375c1.2,0.69 2.67,0.69 3.87,0c1.2,-0.705 1.92,-1.995 1.905,-3.375v-166.095l31.905,30.615c0.975,0.975 2.4,1.335 3.735,0.945c1.32,-0.375 2.34,-1.44 2.67,-2.775c0.33,-1.335 -0.09,-2.745 -1.095,-3.69z"></path></g></g></g></svg>
    .nav-current
      span {{ $nuxt.$route.name }}
    nuxt-link.nav-next(:to="next")
      <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="24" height="24" viewBox="0 0 192 192" style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,192v-192h192v192z" fill="none"></path><g fill="#ffffff"><g id="surface1"><path d="M95.94,3.78c-2.115,0.045 -3.81,1.785 -3.78,3.9v166.095l-31.905,-30.615c-0.735,-0.735 -1.74,-1.14 -2.775,-1.125c-1.56,0.045 -2.955,1.02 -3.51,2.475c-0.555,1.455 -0.18,3.105 0.975,4.17l41.055,39.42l41.055,-39.42c1.005,-0.945 1.425,-2.355 1.095,-3.69c-0.33,-1.335 -1.35,-2.4 -2.67,-2.775c-1.335,-0.39 -2.76,-0.03 -3.735,0.945l-31.905,30.615v-166.095c0.015,-1.035 -0.39,-2.04 -1.125,-2.775c-0.735,-0.735 -1.74,-1.14 -2.775,-1.125z"></path></g></g></g></svg>

</template>

<script>
export default {
  props: {
    prev: { type: String, default: '' },
    next: { type: String, default: '' }
  }
}
</script>


<style lang="scss">
.navigation {
  position: fixed;
  height: 100vh;
  width: 1rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
  padding: 5rem 0;
  margin-left: 2rem;
  .nav-current {
    font-size: 0.8rem;
    text-transform: uppercase;
    letter-spacing: 0.75rem;
    transform: rotate(-90deg);
  }
}
</style>
