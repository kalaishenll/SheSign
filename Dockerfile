FROM maven:3.8.5-openjdk-17

WORKDIR /app

COPY pom.xml .
COPY . .

RUN mvn clean package

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "target/alyssaPoc-0.0.1-SNAPSHOT.jar"]