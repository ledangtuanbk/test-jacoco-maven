# Use the official OpenJDK 17 image as the base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application's JAR file into the container
COPY target/*.jar /app/your-app.jar

# Copy JaCoCo agent into the container
COPY jacocoagent.jar /app/jacocoagent.jar

# Expose the port on which your application runs (optional)
EXPOSE 8080

# Define the entrypoint with JaCoCo agent attached
ENTRYPOINT ["java", "-javaagent:/app/jacocoagent.jar=destfile=/app/jacoco.exec", "-jar", "/app/your-app.jar"]
