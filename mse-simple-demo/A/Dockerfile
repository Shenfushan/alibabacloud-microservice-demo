FROM eclipse-temurin:17-jdk-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add wget unzip tcpdump ngrep iproute2-ss bind-tools

WORKDIR /app
COPY /target/A-1.0.0.jar /app

EXPOSE 20001
ENTRYPOINT ["sh", "-c"]
CMD ["java --add-opens java.base/java.math=ALL-UNNAMED -jar /app/A-1.0.0.jar"]