FROM node:18-alpine3.15

WORKDIR /app

COPY  .  ./

RUN yarn install

RUN yarn build

EXPOSE 3000

CMD printenv; node ./.output/server/index.mjs