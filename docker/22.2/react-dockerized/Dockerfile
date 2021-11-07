FROM node:14-alpine AS build
# vamos basear nossa imagem no node:14-alpine (NodeJS versão 14 que roda a partir da distro Alpine) e dar o alias "build" para ela
WORKDIR /app
# Na nossa aplicação, vamos definir o diretório /app como nosso WORKDIR 
COPY package*.json ./
# vamos copiar todos os arquivos que começam com "package" ( package.json e package-lock.json ), para nosso diretório atual, a pasta /app 
RUN npm install
# Aqui é importante frisar, que só é possível fazer esse comando de instalação pois a imagem Node , já possui esses aplicativos internamente.
# Antes de passar para os próximos comandos, alguns passos intermediários são necessários, como por exemplo, fazer a cópia dos demais arquivos para dentro do container, porém, como já rodamos um npm install , é interessante criarmos um arquivo chamado dockerignore para adicionarmos lá a node_modules, de modo que ela não seja copiada.
COPY . .
# Agora, no Dockerfile do nosso mini-projeto, podemos definir a cópia de todos os arquivos
RUN npm run build
# Também devemos adicionar um comando para executar o processo de build * da nossa aplicação
FROM nginx:1.16.0-alpine AS prod
# Agora, vamos definir a imagem de origem do Nginx , com o alias "prod". Em seguida, iremos copiar as informações da imagem que apelidamos de "build" e sua respectiva pasta para o diretório do servidor
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
# Por padrão, o Nginx usa a porta 80 para executar as aplicações, então, podemos expor esta porta
ENTRYPOINT ["nginx", "-g", "daemon off;"]