#Imagem Base
FROM ubuntu

# Instalação do Node.js
RUN apt update && apt install curl -y && curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh && bash nodesource_setup.sh && DEBIAN_FRONTEND=noninteractive TZ=America/Bahia apt install -y nodejs

#Criando um Diretorio de trabalho
WORKDIR /app

#copiando os arquivos para a Imagem
COPY . .

#Instalando as Dependencias
RUN npm install

#Expondo a porta 80
EXPOSE 8080

#Rodando a Aplicação
CMD [ "node", "server.js" ]