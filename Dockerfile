#Imagem Base
FROM node:20.9.0-alpine3.18

#Criando um Diretorio de trabalho
WORKDIR /app

# Copia apenas os arquivos de dependências primeiro
COPY package*.json .

# Instala as dependências antes de copiar o código-fonte
RUN npm install

# Agora copia o restante dos arquivos
COPY . .

EXPOSE 8080

CMD ["node", "server.js"]