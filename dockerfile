FROM fedora
MAINTAINER jagadeesh
RUN yum install httpd -y
COPY app.html /var/www/html/index.html
# we have to copy page by the name of index.html as its the home page
EXPOSE 80
# port will be same as product default port here its httpd
ENTRYPOINT httpd -DFOREGROUND
# it will start httpd server
