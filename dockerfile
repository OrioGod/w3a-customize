#依赖的基础镜像jdk8
FROM java:8
FROM maven:3.8.5
#需要暴露出去的端口，也就是我项目的端口
EXPOSE 8888

ADD ./w3a-customize /w3a-customize
ADD ./w3a-customize/bootstrap.sh /w3a-customize/bootstrap.sh
WORKDIR /w3a-customize

RUN mvn clean package

MAINTAINER Kyrie

RUN chmod 755 /w3a-customize/bootstrap.sh

CMD ["./bootstrap.sh"]
