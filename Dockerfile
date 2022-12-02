FROM openjdk:8-jre-alpine

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} application.jar

WORKDIR /
# Run the jar file 
ENTRYPOINT ["java","-Dserver.port=10000","-Djava.security.egd=file:/dev/./urandom","-jar",${JAR_FILE}]
