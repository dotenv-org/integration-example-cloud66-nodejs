FROM node:12-alpine AS builder

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install
RUN npm install pm2 -g
COPY . .

CMD ["pm2-runtime", "index.js"]
