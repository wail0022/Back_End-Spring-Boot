FROM maven:3-eclipse-temurin-22-alpine AS build
WORKDIR /app
RUN apk add --no-cache git
RUN git clone https://github.com/MedEZZOUAK/springapi_init.git .
# update the project version
RUN git pull
RUN mvn clean package -DskipTests

FROM openjdk:22-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar /app/app.jar
EXPOSE 8080
ENV SPRING_PROFILES_ACTIVE=prod
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
