FROM maven:3.9.6-eclipse-temurin-21-alpine AS build
RUN mkdir -p /app
WORKDIR /app
COPY pom.xml /app
COPY src /app/src
RUN mvn -B package --file pom.xml -DskipTests

FROM eclipse-temurin:21-jdk-alpine
EXPOSE 8081
COPY --from=build /app/target/*jar devops-demo-1.0.jar
ENTRYPOINT ["java","-jar","devops-demo-1.0.jar"]
