FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
WORKDIR /var/www/html
RUN touch index.html
RUN echo "hi im sohel sayyed from pune">index.html
EXPOSE 80
CMD["apache2ctl","-d","FOREGROUND"]

