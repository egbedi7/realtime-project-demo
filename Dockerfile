FROM eclipse-temurin:8-jre
COPY target/realtime-project-demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
