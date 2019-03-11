FROM openjdk:8u181-jdk
COPY target/*.jar /app/app.jar
CMD java -jar app.jar