FROM openjdk:11

RUN mkdir /app
WORKDIR /app

COPY . /app

RUN ./mvn clean package

ENTRYPOINT ["java", "-jar", "target/hosting-0.0.1-SNAPSHOT.jar"]