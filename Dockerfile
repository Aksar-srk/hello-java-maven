# small JRE base
FROM openjdk:11-jre-slim
WORKDIR /app

# copy the jar produced by 'mvn package'
COPY target/*.jar app.jar

# run the jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
