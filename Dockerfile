FROM node:18

WORKDIR /app

COPY docker/app/package*.json ./
RUN npm install

COPY docker/app .

EXPOSE 3000

CMD ["node", "app.js"]
