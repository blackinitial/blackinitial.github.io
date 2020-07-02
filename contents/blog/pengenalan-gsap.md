---
slug: 'pengenalan-gsap'
title: Pengenalan GSAP
date: '02-03-2019'
color: '#347964'
description: |
  pengenalan gsap, apa itu gsap, deskripsi gsap
tags:
  - animate
  - javascript
---
## Deskripsi GSAP
GSAP adalah singkatan dari The GreenShock Animation Platform. Fungsi GSAP adalah untuk membuat animasi yang dapat diakses Javascript seperti CSS, SVG, Canvas, dll. Fungsi utama GSAP yaitu mengatasi masalah ketidakonsistenan efek animasi/transisi di berbagai browser, dan hebatnya kecepatan GSAP diklaim 20 kali lebih cepat dari JQuery dan bahkan lebih cepat dari CSS3 Animation/Transition sendiri.

Efek animasi yang diberikan GSAP sangat Smooth sekali, sangat real. Banyak Situs-situs besar yang memakainya, bahkan Google pun merekomendasikan.

GSAP sendiri adalah seperangkat tools untuk membuat efek animasi atau efek transisi, tools didalamnya seperti TweenLite, TweenMax, TimelineLite, TimelineMax, Draggable, dll.


## Instalasi
Instalasi bisa lewat CDN dan npm

### CDN
Dipasang langsung di script tag
```javascript
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.2/TweenMax.min.js"></script>
```

### NPM
```bash
npm install gsap
```