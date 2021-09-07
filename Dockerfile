FROM ubuntu:latest

RUN apt-get update && apt-get install openjdk-11-jdk -y
RUN java -version

COPY ./web-app-spring-data-0.0.1-SNAPSHOT.jar ./app/web-app-spring-data-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java"]
CMD ["-jar", "./app/web-app-spring-data-0.0.1-SNAPSHOT.jar"]


