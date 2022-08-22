# img:versão
FROM node:alpine

# diretório de trabalho
WORKDIR /usr/app

# adicionando package.json no diretório de trabalho
COPY package*.json ./   

RUN npm install

# lançando todos os arquivis do projeto no diretório de trabalho
copy . .


# porta exposta do container
EXPOSE 3000


# Unico por Dockerfile, aqui inicializamos o projeto
CMD ["npm", "start"]


