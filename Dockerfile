FROM node:16.14@sha256:426e7b46d7f3a8ef2016fb2d4a3100be5f0829244ca2597bbb1cd106b8eb6cd8

LABEL author="DonVietnam" \
      version="1"

WORKDIR /app

COPY package*.json ./

RUN npm install --only=production

COPY src /app

EXPOSE 3000

CMD [ "node", "app.js" ]
