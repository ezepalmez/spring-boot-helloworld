FROM openjdk:8-jre-alpine

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} application.jar

RUN java -Djarmode=layertools -jar application.jar extract

FROM openjdk:8-jre-alpine
COPY --from=builder dependencies/ ./
RUN true
COPY --from=builder spring-boot-loader/ ./
RUN true
COPY --from=builder snapshot-dependencies/ ./
RUN true
COPY --from=builder application/ ./
RUN true

ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]
