FROM alpine

LABEL maintainer="jakl.coding@pm.me"

RUN apk add --update nodejs nodejs-npm

COPY . /src

WORKDIR /src

RUN npm install

EXPOSE 8080

ENTRYPOINT ["node", "./index.js"]