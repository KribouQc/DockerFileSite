FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y nginx
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git
#ADD static-website-example/ /var/www/html/
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
