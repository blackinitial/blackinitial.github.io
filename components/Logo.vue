<template lang="pug">
  header
    nuxt-link(to="/" class="logo")
      span.logo-type Black Initial
      <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="-2 -2 47 47" aria-labelledby="title" role="presentation">
        <title id="title" lang="en">Typographie Logo</title>
        <g>
          <path d="M21,1A21,21,0,1,0,42,21,21,21,0,0,0,21,1ZM31,24,22,30H21L11,24h0L21,12h1L32,23h0Z" transform="translate(-1 -1)" fill="#808285"/>
          <polygon points="20 28 20 13 12 23 20 28" fill="#808285" stroke="#231f20" stroke-miterlimit="10"/>
          <polygon points="21 28 29 23 21 13 21 28" fill="#808285" stroke="#231f20" stroke-miterlimit="10"/>
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
