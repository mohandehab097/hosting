FROM maven:3.8.4-openjdk-11 AS builder

WORKDIR /app
COPY . .

RUN mvn clean package

FROM openjdk:11-jre-slim

WORKDIR /app
COPY --from=builder /app/target/hosting-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]