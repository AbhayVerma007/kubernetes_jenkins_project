FROM almalinux:9

LABEL maintainer="vermaabhay085@gmail.com"

RUN dnf install -y httpd zip unzip && \dnf clean all

ADD https://github.com/AbhayVerma007/kubernetes_jenkins_project/raw/main/2156_graphite_creative.zip /var/www/html/

WORKDIR /var/www/html/

RUN unzip 2156_graphite_creative.zip && \
cp -rvf 2156_graphite_creative/* . && \
rm -rf 2156_graphite_creative 2156_graphite_creative.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80