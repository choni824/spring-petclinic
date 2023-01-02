# Dockerfile
FROM docker.io/library/gradle:7.5.1-jdk17-jammy

WORKDIR /app



COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
