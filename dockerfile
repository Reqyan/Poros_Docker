FROM ubuntu:latest
MAINTAINER REQYAN LAZUARDI
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
RUN ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
RUN apt-get install mariadb-common mariadb-server -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
