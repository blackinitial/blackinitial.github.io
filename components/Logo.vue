<template lang="pug">
  header
    nuxt-link(to="/" class="logo")
      span.logo-type Black Initial
      <svg width="43" height="43" xmlns="http://www.w3.org/2000/svg">
        <title>Typographie Logo</title>

        <g>
          <title>background</title>
          <rect fill="none" id="canvas_background" height="45" width="45" y="-1" x="-1"/>
        </g>
        <g>
          <title>Layer 1</title>
          <path id="svg_8" d="m27.41667,12.91668c0,0 -2.16666,1 -2.16666,0.83333" opacity="0.5" stroke-opacity="null" stroke-width="null" stroke="null" fill="#808285"/>
          <path id="svg_9" d="m35.24999,21.75" opacity="0.5" stroke-opacity="null" stroke-width="null" stroke="null" fill="#808285"/>
          <path id="svg_10" d="m17.45833,11.625" opacity="0.5" stroke-opacity="null" stroke-width="null" stroke="null" fill="#808285"/>
          <path id="svg_11" d="m21.48611,12.875" opacity="0.5" stroke-opacity="null" stroke-width="null" stroke="null" fill="#808285"/>
          <polygon id="svg_3" stroke-miterlimit="10" stroke="#231f20" fill="#808285" points="23.323503583669662,-3.240438461303711 23.323503583669662,-18.24043846130371 15.323503583669662,-8.240438461303711 23.323503583669662,-3.240438461303711 "/>
          <polygon id="svg_4" stroke-miterlimit="10" stroke="#231f20" fill="#808285" points="24.323503583669662,-3.240438461303711 32.32350167632103,-8.240438461303711 24.323503583669662,-18.24043846130371 24.323503583669662,-3.240438461303711 "/>
          <g id="svg_15">
          <path stroke="null" id="svg_2" fill="#808285" d="m21.47618,0.50002a21,21 0 1 0 21,20a21,21 0 0 0 -21,-20z"/>
          <text xml:space="preserve" text-anchor="start" font-family="Helvetica, Arial, sans-serif" font-size="24" id="svg_12" y="29.76996" x="10.16927" stroke-opacity="null" stroke-width="0" stroke="null" fill="#000000">BI</text>
          </g>
        </g>
      </svg>
</template>

<style lang="scss">
.logo {
  position: fixed;
  top: 10px;
  right: 30px;
  font-size: 2rem;
  color: #fff;
  text-decoration: none;
  cursor: pointer;
  border-bottom: 1px solid rgba(255, 255, 255, 0.25);
  &:hover {
    opacity: 0.8;
    transition: 0.25 opacity ease;
  }
}
.logo-type {
  font-size: 1rem;
  letter-spacing: 0.2rem;
  padding-right: 5px;
  text-transform: uppercase;
  vertical-align: super;
}
</style>
