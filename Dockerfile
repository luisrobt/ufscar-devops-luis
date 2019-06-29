FROM alpine
LABEL maintainer="luis<luis.robt@gmail.com>"

# copio o arquivo exsitente para a imagem
ADD help.txt /var/opt/help.ls

# listo o diretorio
RUN ls /var/opt/

# leio o conteudo do arquivo
RUN cat /var/opt/help.ls




