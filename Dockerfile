FROM node:alpine

WORKDIR /usr/app

COPY package*.json ./   

RUN npm install

copy . .


# porta exposta
EXPOSE 3000

# Unico por Dockerfile
CMD ["npm", "start"]


