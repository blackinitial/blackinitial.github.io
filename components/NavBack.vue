<template lang="pug">
  nav.nav-wrapper
    a.nav-back(@click="$router.back()")
      <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="24" height="24" viewBox="0 0 192 192" style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,192v-192h192v192z" fill="none"></path><g fill="#ffffff"><g id="surface1"><path d="M45.915,53.715c-0.99,0.06 -1.92,0.495 -2.595,1.23l-39.42,41.055l39.42,41.055c0.945,1.005 2.355,1.425 3.69,1.095c1.335,-0.33 2.4,-1.35 2.775,-2.67c0.39,-1.335 0.03,-2.76 -0.945,-3.735l-30.615,-31.905h166.095c1.38,0.015 2.67,-0.705 3.375,-1.905c0.69,-1.2 0.69,-2.67 0,-3.87c-0.705,-1.2 -1.995,-1.92 -3.375,-1.905h-166.095l30.615,-31.905c1.125,-1.125 1.44,-2.82 0.78,-4.26c-0.645,-1.455 -2.115,-2.355 -3.705,-2.28z"></path></g></g></g></svg>
</template>

<style lang="scss">
.nav-wrapper {
  position: relative;
}
.nav-back {
  position: absolute;
  top: 0;
  left: -5rem;
  cursor: pointer;
  transform: scale(1.5);
  transform-origin: top;
  transition: all 0.25s ease;
  &:hover {
    left: -4.75rem;
  }
}
</style>
