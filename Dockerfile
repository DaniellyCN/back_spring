#FROM maven:3.9.4-eclipse-temurin-17 AS builder
#WORKDIR /build
#COPY ./ ./
#RUN chmod +x ./mvnw
#RUN ./mvnw clean package
#
FROM openjdk:17-jdk-alpine
WORKDIR /app

COPY ./target/parking-control-0.0.1-SNAPSHOT.jar parking-control-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "/app/parking-control-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080


#FROM eclipse-temurin:17-jdk-focal
#WORKDIR /app
#
#COPY .mvn/ .mvn
#COPY mvnw pom.xml ./
#RUN chmod +x mvnw
#RUN ./mvnw dependency:go-offline
#
#COPY src ./src
#
#CMD ["./mvnw", "spring-boot:run"]
#EXPOSE 5002