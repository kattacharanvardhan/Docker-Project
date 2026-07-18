FROM ubuntu
RUN  apt-get update -y
RUN  apt-get install apache2 -y
RUN  apt-get install apache2-utils -y
COPY index.html /var/www/html
RUN  service apache2 restart
CMD  ["/usr/sbin/apachectl","-D","FOREGROUND"]
EXPOSE 80
