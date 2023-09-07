FROM centos:latest
MAINTAINER prathameshfarakate9999@gmail.com
RUN yum install -y hhtpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/kider.zip
WORKDIR /var/www/html
RUN unzip kider.zip
RUN cp -rvf kider/* .
RUN rm -rf Kider Free Website Template - Free-CSS.com.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
