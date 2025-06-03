FROM bitnami/node:latest

WORKDIR /app

COPY . .

COPY package*.json ./

RUN npm install

EXPOSE 3000

ENTRYPOINT ["npm", "start"]




