FROM amazoncorretto:21.0.4-al2023-headless
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/springbootamazoncorretto.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
