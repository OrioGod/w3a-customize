#依赖的基础镜像jdk8
FROM java:8
#需要暴露出去的端口，也就是我项目的端口
EXPOSE 8080

MAINTAINER Kyrie

CMD ["./bootstrap.sh"]
