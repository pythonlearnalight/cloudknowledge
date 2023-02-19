FROM ubuntu:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN apt-get update
RUN apt-get install -y apache2 \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/seo-master.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip seo-master.zip
RUN cp -rvf seo-master/* .
RUN rm -rf seo-master seo-master.zip 
CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
EXPOSE 80
