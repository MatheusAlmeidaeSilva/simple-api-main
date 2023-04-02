FROM node:16

# Criando o diretório de trabalho
WORKDIR /app

# Copiando o package.json e package-lock.json
COPY package*.json ./

# Instalando as dependências
RUN npm install

# Copiando o código da aplicação
COPY . .

# Expondo a porta da API
EXPOSE 3000

# Iniciando a aplicação
CMD ["npm", "start"]
