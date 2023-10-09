# we will use openjdk 8 with alpine as it is a very small linux distro
# FROM openjdk:8-jre-alpine3.9
FROM openjdk:22-slim-bullseye

RUN pwd

RUN tree

WORKDIR /app
# copy the packaged jar file into our docker image
COPY target/onlinebookstore-0.0.1-SNAPSHOT.war /app/online-bookstore-app.war

EXPOSE 8080

# set the startup command to execute the jar
# CMD java - jar /my-app-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "/app/online-bookstore-app.war"]


