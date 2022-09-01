FROM node:18-alpine

WORKDIR /app
COPY package.json ./
RUN npm install
COPY next.config.js ./next.config.js

COPY components ./components
COPY models ./models
COPY pages ./pages
COPY public ./public
COPY redux ./redux
COPY styles ./styles
COPY util ./util

CMD ["npm", "run", "dev"]