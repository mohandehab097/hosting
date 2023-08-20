FROM openjdk:11.0.15-jdk-oraclelinux8
ENV PORT 8083
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
