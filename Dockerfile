
# img:versão
FROM node:alpine

# diretório de trabalho
WORKDIR /usr/app

# adicionando package.json no diretório de trabalho
COPY package*.json ./   

#Aqui se faz possível a adicionar as instalações do npm!
RUN npm install nodemon

RUN npm install

# lançando todos os arquivis do projeto no diretório de trabalho
copy . .

# porta exposta do container
EXPOSE 3000


# Unico por Dockerfile, aqui inicializamos o projeto
CMD ["npm", "start"]


