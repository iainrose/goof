# FROM node:6-stretch
FROM node:14.20.0

LABEL org.opencontainers.image.source="https://github.com/iainrose/goof"

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN npm update
RUN npm install
EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]
