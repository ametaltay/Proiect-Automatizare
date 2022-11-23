FROM amazonlinux:latest
RUN yum update -y && \
    yum install -y httpd && \
    yum search wget && \
    yum install wget -y && \
    yum install unzip -y
RUN cd /var/www/html
RUN wget -4 https://www.free-css.com/assets/files/free-css-templates/download/page285/gymster.zip
RUN unzip  gymster.zip 
RUN cp -r gym-html-template/* /var/www/html/
RUN rm -rf  gym-html-template gymster.zip

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
