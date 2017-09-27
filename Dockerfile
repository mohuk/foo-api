FROM node:8.5.0

RUN mkdir -p /app

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install

COPY . ./

EXPOSE 8080
ENTRYPOINT ["npm", "run", "prod"]
