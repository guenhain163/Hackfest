#syntax=docker/dockerfile:1
FROM openjdk:20-jdk
WORKDIR /app
# copy from your Host(PC, laptop) to container
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# run this inside the image
RUN ./mvnw dependency:go-offline
COPY src ./src

# run inside container
CMD ["./mvnw", "spring-boot:run"]