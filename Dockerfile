FROM openjdk:8-jdk

ADD /target/demoapp.jar /opt/

ENV APP_STARTER "null"

EXPOSE 8080

ENTRYPOINT java -Dapplication.starter="${APP_STARTER}" -jar /opt/demoapp.jar
