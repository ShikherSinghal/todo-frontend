FROM node:14.15.0 as develop-stage
LABEL maintainer="shikher.s@greyorange.com"

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install
COPY . .

FROM develop-stage as build-stage
ARG tag=unknown
ENV BUILD_TAG_ID ${tag}
RUN npm run build

EXPOSE 8080
