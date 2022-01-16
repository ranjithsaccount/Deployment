FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=build/libs/spring-boot-0.0.1-SNAPSHOT.jar
WORKDIR /opt/app
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
