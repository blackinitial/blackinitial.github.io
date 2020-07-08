# Dockerfile
FROM node:13-alpine

# # create destination directory
# RUN mkdir -p /usr/src/nuxt-app
# WORKDIR /usr/src/nuxt-app

# # copy the app, note .dockerignore
# COPY . /usr/src/nuxt-app/

WORKDIR /usr/src/app
COPY . ./

RUN npm install
RUN npm run build

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

CMD [ "npm", "run", "start" ]