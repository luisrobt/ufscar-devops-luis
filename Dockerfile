#Definimos a imagem basea qual nossa aplicação vai se basear
FROM nginx:1.17.0-alpine

#Definimos o nome do mantenedor, seja ele uma pessoa ou instituição
LABEL maintainer="luis <luis.robt@gmail.com>"

#Copiamos o conteudo estatico pro nosso servidor
COPY ./arquivos /usr/share/nginx/html

#Expomos a porta 80
EXPOSE 80

#Definimos o sinal de stop como o sinal de termino da aplicação
STOPSIGNAL SIGTERM

#Definimos o comando inicial que inicializa o nginx com o modo daemon desligado
CMD ["nginx", "-g", "daemon off;"]



