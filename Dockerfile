FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /workspace

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src

RUN mvn clean package

# Estágio 2
FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY --from=build /workspace/target/devcalc-api-*-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]