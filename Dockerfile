# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:8-jre-alpine3.9
# FROM openjdk:22-slim-bullseye

WORKDIR /app
# copy the packaged jar file into our docker image
COPY onlinebookstore-J2EE/target/onlinebookstore-0.0.1-SNAPSHOT.jar /app/online-bookstore-app.jar
# COPY jdk.sh /app/jdk.sh

EXPOSE 8080

RUN java --version

# RUN jdk.sh

RUN java --version

# set the startup command to execute the jar
# CMD java - jar /my-app-1.0-SNAPSHOT.jar
CMD ["java", "-jar" "/app/online-bookstore-app.jar"]


# #!/bin/bash

# # Install the default JDK
# apt-get update

# # Create the tomcat directory
# mkdir /tomcat

# # Install the default JDK
# apt-get install default-jdk

# # Change to the tomcat directory
# cd /tomcat

# # Download the Tomcat 10.1.13 binary archive
# wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.13/bin/apache-tomcat-10.1.13.zip

# # Install unzip
# apt-get install unzip

# # Unzip the Tomcat binary archive
# unzip apache-tomcat-10.1.13.zip

# # Remove the Tomcat binary archive
# rm apache-tomcat-10.1.13.zip

# # Change to the Tomcat bin directory
# cd apache-tomcat-10.1.13/bin

# # Make the Tomcat startup scripts executable
# chmod 700 *.sh

# # Start Tomcat
# ./startup.sh